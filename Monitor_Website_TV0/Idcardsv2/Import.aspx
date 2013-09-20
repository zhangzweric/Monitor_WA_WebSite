<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Import.aspx.cs" Inherits="Idcards.Import" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        Import Data</h1>
    <br />
    <div>
        <asp:Panel ID="pnlUpload" runat="server">
            <asp:FileUpload ID="Upload" runat="server" />
            <br />
            <br />
            <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" 
                Text="Upload" CssClass="ButtonSmall" />
            <br />
            <asp:Label ID="lblError" runat="server" Visible="false" />
            <br />
        </asp:Panel>
    </div>
    <div>
        <asp:Panel ID="pnlFieldMapping" runat="server" Visible="false">
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow>
                    <asp:TableCell CssClass="leftCol">
                        <asp:Label ID="lblLayout" runat="server" Text="Layout"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlLayout" runat="server" Width="250" OnSelectedIndexChanged="UpdateLayout" AutoPostBack="true">
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblLayoutData" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <asp:Table ID="tblDataMapping" runat="server">
                <asp:TableRow ID="trFirstname">
                    <asp:TableCell CssClass="leftCol">
                        <asp:Label ID="lblFirstname" runat="server" Text="Firstname"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlFirstname" runat="server" Width="250" OnSelectedIndexChanged="ddlFirstname_SelectedIndexChanged"
                            AutoPostBack="true">
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblFirstnameData" runat="server"></asp:Label>
                        <asp:HiddenField ID="hdnIndexFirstname" runat="server" Value="-1" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trSurname">
                    <asp:TableCell CssClass="leftCol">
                        <asp:Label ID="lblSurname" runat="server" Text="Surname"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlSurname" runat="server" Width="250" OnSelectedIndexChanged="ddlSurname_SelectedIndexChanged"
                            AutoPostBack="true">
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblSurnameData" runat="server"></asp:Label>
                        <asp:HiddenField ID="hdnIndexSurname" runat="server" Value="-1" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trDateOfBirth">
                    <asp:TableCell CssClass="leftCol">
                        <asp:Label ID="lblDateOfBirth" runat="server" Text="Date Of Birth"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlDateOfBirth" runat="server" Width="250" OnSelectedIndexChanged="ddlDateOfBirth_SelectedIndexChanged"
                            AutoPostBack="true">
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblDateOfBirthData" runat="server"></asp:Label>
                        <asp:HiddenField ID="hdnIndexDateOfBirth" runat="server" Value="-1" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trAddress">
                    <asp:TableCell CssClass="leftCol">
                        <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlAddress" runat="server" Width="250" OnSelectedIndexChanged="ddlAddress_SelectedIndexChanged"
                            AutoPostBack="true">
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblAddressData" runat="server"></asp:Label>
                        <asp:HiddenField ID="hdnIndexAddress" runat="server" Value="-1" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trSuburb">
                    <asp:TableCell CssClass="leftCol">
                        <asp:Label ID="lblSuburb" runat="server" Text="Suburb"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlSuburb" runat="server" Width="250" OnSelectedIndexChanged="ddlSuburb_SelectedIndexChanged"
                            AutoPostBack="true">
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblSuburbData" runat="server"></asp:Label>
                        <asp:HiddenField ID="hdnIndexSuburb" runat="server" Value="-1" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trPostcode">
                    <asp:TableCell CssClass="leftCol">
                        <asp:Label ID="lblPostcode" runat="server" Text="Postcode"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlPostcode" runat="server" Width="250" OnSelectedIndexChanged="ddlPostcode_SelectedIndexChanged"
                            AutoPostBack="true">
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblPostcodeData" runat="server"></asp:Label>
                        <asp:HiddenField ID="hdnIndexPostcode" runat="server" Value="-1" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trState">
                    <asp:TableCell CssClass="leftCol">
                        <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlState" runat="server" Width="250" OnSelectedIndexChanged="ddlState_SelectedIndexChanged"
                            AutoPostBack="true">
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblStateData" runat="server"></asp:Label>
                        <asp:HiddenField ID="hdnIndexState" runat="server" Value="-1" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trPrintedID">
                    <asp:TableCell CssClass="leftCol">
                        <asp:Label ID="lblPrintedID" runat="server" Text="PrintedID"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlPrintedID" runat="server" Width="250" OnSelectedIndexChanged="ddlPrintedID_SelectedIndexChanged"
                            AutoPostBack="true">
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblPrintedIDData" runat="server"></asp:Label>
                        <asp:HiddenField ID="hdnIndexPrintedID" runat="server" Value="-1" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trBarcode">
                    <asp:TableCell CssClass="leftCol">
                        <asp:Label ID="lblBarcode" runat="server" Text="Barcode"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlBarcode" runat="server" Width="250" OnSelectedIndexChanged="ddlBarcode_SelectedIndexChanged"
                            AutoPostBack="true">
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblBarcodeData" runat="server"></asp:Label>
                        <asp:HiddenField ID="hdnIndexBarcode" runat="server" Value="-1" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trCustomField1">
                    <asp:TableCell CssClass="leftCol">
                        <asp:Label ID="lblCustomField1" runat="server" Text="CustomField1"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlCustomField1" runat="server" Width="250" OnSelectedIndexChanged="ddlCustomField1_SelectedIndexChanged"
                            AutoPostBack="true">
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCustomField1Data" runat="server"></asp:Label>
                        <asp:HiddenField ID="hdnIndexCustomField1" runat="server" Value="-1" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trCustomField2">
                    <asp:TableCell CssClass="leftCol">
                        <asp:Label ID="lblCustomField2" runat="server" Text="CustomField2"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlCustomField2" runat="server" Width="250" OnSelectedIndexChanged="ddlCustomField2_SelectedIndexChanged"
                            AutoPostBack="true">
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCustomField2Data" runat="server"></asp:Label>
                        <asp:HiddenField ID="hdnIndexCustomField2" runat="server" Value="-1" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            Options
            <asp:Table ID="tblOptions" runat="server" Width="726px">
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Right" Width="30">
                        <asp:CheckBox ID="chkIgnoreFirstLine" runat="server" OnCheckedChanged="chkIgnoreFirstLine_CheckedChanged"
                            AutoPostBack="true" />
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Left" Width="150">
                        <asp:Label ID="afsaf" runat="server" Text="Ignore first line"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Left" Width="100">
                        <asp:Label ID="lblTextQualifier" runat="server" Text="Text Qualifier: "></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Left">
                        <asp:DropDownList ID="ddlTextQualifier" runat="server" AutoPostBack="true" Width="100"
                            OnSelectedIndexChanged="ddlTextQualifier_SelectedIndexChanged">
                            <asp:ListItem Text="(None)" />
                            <asp:ListItem Text="&apos;" />
                            <asp:ListItem Text="&quot;" />
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            Data Preview
            <div style="overflow-y: scroll; height: 200px">
                <asp:GridView ID="grdView" runat="server" CellPadding="3" GridLines="Both" Width="960px"
                    BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px"
                    ShowHeaderWhenEmpty="True">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <EmptyDataTemplate>
                        <asp:Label ID="lblEmptySearch" runat="server">Data file contains no data</asp:Label>
                    </EmptyDataTemplate>
                    <Columns>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
            </div>
            <br />
            <asp:Button ID="btnImport" runat="server" Text="Import" 
                OnClick="btnImport_Click" CssClass="ButtonSmall" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
                OnClick="btnCancel_Click" CssClass="ButtonSmall" />
            <asp:HiddenField ID="hdnFilePath" runat="server" />
            <asp:HiddenField ID="hdnSuccessfullRecords" runat="server" />
            <asp:HiddenField ID="hdnImportError" runat="server" />
        </asp:Panel>
    </div>
    <asp:Panel ID="pnlImportInfo" runat="server" Visible="false">
        <asp:Label ID="lblSuccessfullImports" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Literal ID="litErrors" runat="server"></asp:Literal>
        <br />
        <asp:Button ID="btnFinished" runat="server" Text="Finish" 
            onclick="btnFinished_Click" CssClass="ButtonSmall" />
    </asp:Panel>
</asp:Content>
