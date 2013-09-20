<HTML>
<HEAD>
<title>Folder Walkthrough</title>
</HEAD>
<!--comment: I like this stylesheet. Use a different one if you want-->
<link rel=stylesheet href="anil.css" type=text/css>
<BODY bgColor=Ivory>

<%
'########################################################
'##                                                    ##
'## Anil Kumar                         November 2001   ##
'## alpha_kappa@rediffmail.com                         ##
'## makrisoft.cjb.net  | anilkumar.itgo.com            ##
'##                                                    ##
'########################################################   

'########################################################
'## Beginner level - I will introduce features to view,
'## download, delete etc - a complete file manager
'## later. This is just to introduce the concepts.
'########################################################
     


If Request.QueryString("fold")<>"" then 
	pthFolder=pthFolder&"/"&Request.QueryString("fold")
else
	pthFolder="/"
end if
'Show page title
Response.Write("<p align=center class=bigtopic>The Makrisoft&#153 Basic Folder Walkthrough Example</p>")

Set fso=Server.CreateObject("Scripting.FileSystemObject")

	'check if folder exists or not and exit if it does not exist.
	If not fso.FolderExists(server.mappath(pthFolder)) then
		Response.Write("<p class=coltext align=center>The specified folder either cannot be displayed or does not exist</p>")
		'the final logout statement if logged in
		Response.Write("<p align=center class=news>[ <a href=admin/login.asp?currentuser="&sCurrentSession&">Back to Administrative Centre </a>] [ <a href=admin/logout.asp>Logout</a>]</p>")
		'show bottom copyright information
		call display_page_bottom()
		Response.End()
	end if
	
'get all required info
sParentFolder=fso.GetParentFolderName(pthFolder)
If sParentFolder="" then sParentFolder="/"
If left(sParentFolder,1)="/" or left(sParentFolder,1)="\" then sParentFolder=Mid(sParentFolder,2)
sBackURL="files.asp?fold="&sParentFolder
dim FolderSize
FolderSize=0

	
Set Folder=fso.GetFolder(Server.MapPath(pthFolder))

'correct the pthFolder variable if it starts with a slash
'we will not be using the mappath method anymore, so we can discard the slash
If left(pthFolder,1)="/" or left(pthFolder,1)="\" then pthFolder=Mid(pthFolder,2)
'now, if the folder name does not end with a slash, then add a slash
If len(pthFolder)>0 and right(pthFolder,1)<>"/" and right(pthFolder,1)<>"\" then _
pthFolder=pthFolder&"/"

'okay, now show the list of files in the folder
Response.Write("<p align=center class=highlights>List of Files in """&pthFolder&"""</p>")
Response.Write("<table width=90% border=0 cellspacing=3 cellpadding=0 align=center>")
Response.Write("<tr><td colspan=8 class=alpha>[ <a href="""&sBackURL& """><img src=""img/back.gif"" border=0>Up One Level</a> ]</td></tr>")
Response.Write("<tr bgcolor=""#cccccc"" class=highlights><td><a href="""&sBackURL& """ title=""up one level""><img src=""img/back.gif"" border=0></a></td><td>File Name</td><td>File Size<sup>*</sup></td><td>File Type</td><td colspan=4>Date Last Modified</td></tr>")
for each item in Folder.files

'a little something about the size
If item.Size>512 then
	FileSize=Clng(item.Size/1024)&" kb"
else
	FileSize=item.Size&" bytes"
end if
%> 
<tr bgcolor="#eeeeee">
<td><img src="img/file.gif" border=0></td>
<td class=bout><%=item.Name%></td>



<td class=bout><%=FileSize%></td>
<td class=bout><%=fit(item.Type,20)%></td>
<td class=bout><%=item.DateLastModified%></td>

</tr>
<%
FolderSize=FolderSize+Clng(item.Size/1024)
filesexist=true
next

If not filesexist then Response.Write("<tr bgcolor=""#eeeeee"" class=bout><td colspan=8 align=left>No files to display</td>")
'display folder size
Response.Write("<tr><td colspan=8 class=highlights align=center>Total size of files in this folder(excluding sub folders)  : "&FolderSize&" kb</td></tr>")
'display all folders below
Response.Write("<tr bgcolor=""#cccccc"" class=highlights><td><a href="""&sBackURL& """ title=""up one level""><img src=""img/back.gif"" border=0></a></td><td colspan=3>Folders</td><td colspan=4>Date Last Modified</td></tr>")
for each item in Folder.SubFolders
%>
<tr class=bout bgcolor="#eeeeee">
<td><img src="img/folder.gif" border=0></td>

<td colspan=3><a href="files.asp?fold=<%=pthFolder%><%=item.Name%>"><%=item.Name%>/</a></td>
<td colspan=4><%=item.DateLastModified%></td>
</tr>
</tr>



<%
foldersexist=true
next
If not foldersexist then Response.Write("<tr bgcolor=""#eeeeee"" class=bout><td colspan=8 align=left>No folders to display</td>")
'a small clarification
Response.Write("<tr><td colspan=8 class=tiny><sup>*</sup>Files sizes shown have been rounded to the nearest integer value except for files smaller than 512 bytes.</td></tr>")
Response.Write("</table>")
%>

<%
'show bottom copyright information
Response.write("<p class=tiny align=center>&copy; 2001 Anil Kumar | <a href=mailto:alpha_kappa@rediffmail.com>alpha_kappa@rediffmail.com</a> </p>")
function fit(text,length)
	'function to make text fit a given length, so that it does not overflow the cell width.
	If len(text)>(length-3) then
		text=left(text,(length-3))
		text=text&"..."
		fit=text
	else
		fit=text
	end if

end function

%> 
</BODY>
</HTML>