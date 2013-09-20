<HTML>
<HEAD>
<TITLE>Support Files</TITLE>
</head>
<body bgcolor="#ffffef" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0"  oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
</head>

<BODY>

<%
' In this demo, at least, we don't allow user to change directories...
' Change the DIRECTORY to point to any virtual directory of your choice.
CONST DIRECTORY = ".\downloads\" ' relative path in virtual directories

' Specify one of these constants for "sortBy"...
CONST FILE_NAME = 0
CONST FILE_TYPE = 1
CONST FILE_SIZE = 2
CONST FILE_CREATED = 3

' get requested sort order, if not first time here...
' (forward by name is default)
req = Request("sortBy")
If Len(req) < 1 Then sortBy = 0 Else sortBy = CInt(req)
req = Request("priorSort")
If Len(req) < 1 Then priorSort = -1 Else priorSort = CInt(req)

'
' did user ask for same sort? to reverse the order?
' but if so, then zap priorSort so clicking again will do forward!
If sortBy = priorSort Then
    reverse = true
    priorSort = -1
Else
    reverse = false
    priorSort = sortBy
End If

' now start the *real* code...
'
path = Server.MapPath( DIRECTORY )

Set fso = CreateObject("Scripting.FileSystemObject")
Set theCurrentFolder = fso.GetFolder( path ) 
Set curFiles = theCurrentFolder.Files 
'
' And now a loop for the files
'
Dim theFiles( )
ReDim theFiles( 500 ) ' arbitrary size!
currentSlot = -1 ' start before first slot

' We collect all the info about each file and put it into one
' "slot" in our "theFiles" array. 
'
For Each fileItem in curFiles
    fname = fileItem.Name
    ftype = fileItem.Type
    fsize = fileItem.Size
    fcreate = fileItem.DateCreated
    currentSlot = currentSlot + 1
    If currentSlot > UBound( theFiles ) Then
        ReDim Preserve theFiles( currentSlot + 99 )
    End If
    ' note that what we put here is an array!
    theFiles(currentSlot) = Array(fname,ftype,fsize,fcreate)
Next
'
' files are now in the array...
'
' As noted, it is actually an ARRAY *OF* ARRAYS. Which makes
' picking the column we will sort on easier!
'
' ...size and sort it...
fileCount = currentSlot ' actually, count is 1 more, since we start at 0
ReDim Preserve theFiles( currentSlot ) ' really not necessary...just neater!

' First, determine which "kind" of sort we are doing.
' (VarType=8 means "string")
'
If VarType( theFiles( 0 )( sortBy ) ) = 8 Then 
    If reverse Then kind = 1 Else kind = 2 ' sorting strings...
Else
    If reverse Then kind = 3 Else kind = 4 ' non-strings (numbers, dates)
End If

'
' A simple bubble sort for now...easier to follow the code...
'
For i = fileCount TO 0 Step -1
    minmax = theFiles( 0 )( sortBy )
    minmaxSlot = 0
    For j = 1 To i
        Select Case kind ' which kind of sort are we doing?
        ' after the "is bigger/smaller" test (as appropriate), 
        ' mark will be true if we need to "remember" this slot...
        Case 1 ' string, reverse...we do case INsensitive!
            mark = (strComp( theFiles(j)(sortBy), minmax, vbTextCompare ) < 0)
        Case 2 ' string, forward...we do case INsensitive!
            mark = (strComp( theFiles(j)(sortBy), minmax, vbTextCompare ) > 0)
        Case 3 ' non-string, reverse ...
            mark = (theFiles( j )( sortBy ) < minmax)
        Case 4 ' non-string, forward ...
            mark = (theFiles( j )( sortBy ) > minmax)
        End Select
        ' so is the current slot bigger/smaller than the remembered one?
        If mark Then 
            ' yep, so remember this one instead!
            minmax = theFiles( j )( sortBy )
            minmaxSlot = j
        End If
    Next
    ' is the last slot the min (or max), as it should be?
    If minmaxSlot <> i Then 
        ' nope...so do the needed swap...
        temp = theFiles( minmaxSlot )
        theFiles( minmaxSlot ) = theFiles( i )
        theFiles( i ) = temp
    End If
Next


%>
<FORM Name="doSort" Method="Get">
<INPUT Type=Hidden Name=priorSort Value="<% = priorSort %>">
<INPUT Type=Hidden Name=sortBy Value="-1">
</FORM>

<SCRIPT Language="JavaScript">
function reSort( which )
{
    document.doSort.sortBy.value = which;
    document.doSort.submit( );
}
</SCRIPT>

<CENTER>

<TABLE Border=1 CellPadding=3>
<TR>
    <TH><A HREF="javascript:reSort(0);">File name</A></TH>
    <TH><A HREF="javascript:reSort(2);">Type</A></TH>
    <TH><A HREF="javascript:reSort(3);">Size</A></TH>
    <TH><A HREF="javascript:reSort(4);">Created</A></TH>
    <TH>Download</A></TH>
</TR>
<%
For i = 0 To fileCount
    Response.Write "<TR>" & vbNewLine
    For j = 0 To UBound( theFiles(i) )
        Response.Write "    <TD>" & theFiles(i)(j) & "</TD>" & vbNewLine
    Next
%>
   <TD><A HREF="<%= ("./downloads/" & theFiles(i)(0))%>" > Download</A> </TD> 
<% Response.Write "</TR>" & vbNewLine
Next
%>
</TABLE>

</BODY>
</HTML>