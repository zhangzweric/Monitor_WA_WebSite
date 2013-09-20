<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PatronDetails.aspx.cs" Inherits="Idcards.PatronDetails" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server" EnableViewState="true">
<asp:Table ID="ControlsTable" runat="server">
            <asp:TableRow>
                <asp:TableCell BorderStyle="none" Width="95" HorizontalAlign="Center">
                    <asp:Button ID="btnQueue" runat="server" Text="Queue" CommandName="Queue" onClick="btnQueue_Click" CssClass="Menubutton" Width="95px"/>
                </asp:TableCell>
                <asp:TableCell BorderStyle="none" Width="80" HorizontalAlign="Center">
                    <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="Edit" onClick="btnEdit_Click" CssClass="Menubutton" Width="80px"/>
                </asp:TableCell>
                <asp:TableCell BorderStyle="none" Width="80" HorizontalAlign="Center">
                    <asp:Button ID="btnNew" runat="server" Text="New" CommandName="New" onClick="btnNew_Click" CssClass="Menubutton" Width="80px"/>
                </asp:TableCell>
                <asp:TableCell BorderStyle="none" Width="80" HorizontalAlign="Center">
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" onClick="btnDelete_Click" CssClass="Menubutton" Width="80px"/>
                </asp:TableCell>
                <asp:TableCell BorderStyle="none" Width="40" HorizontalAlign="Center">
                    <asp:Button ID="btnNavBegin" runat="server" Text="<<" CommandName="First" onClick="PagerButtonClick" CssClass="Menubutton" Width="40px"/>
                </asp:TableCell>
                <asp:TableCell BorderStyle="none" Width="40" HorizontalAlign="Center">
                    <asp:Button ID="btnNavPrevious" runat="server" Text="<" CommandName="Prev" onClick="PagerButtonClick" CssClass="Menubutton" Width="40px"/>
                </asp:TableCell>
                <asp:TableCell BorderStyle="none" Width="40" HorizontalAlign="Center">
                    <asp:Button ID="btnNavNext" runat="server" Text=">" CommandName="Next" onClick="PagerButtonClick" CssClass="Menubutton" Width="40px"/>
                </asp:TableCell>
                <asp:TableCell BorderStyle="none" Width="40" HorizontalAlign="Center">
                    <asp:Button ID="btnNavLast" runat="server" Text=">>" CommandName="Last" onClick="PagerButtonClick" CssClass="Menubutton" Width="40px"/>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
<h1>Patron Information</h1>
<br />
<div>
    <asp:Panel ID="PnlError" runat="server" Visible = "false">
            <div id="content" class="clearfix">
                    <div id="ctl00_masterpageErrorMessage" class="masterpage-error-message">
                        <div class="message">
                            Saving record failed. Reason(s) as follows:
                            <ul>
                                <asp:Literal ID="litError" runat="server"></asp:Literal>
                            </ul>
                        </div>
                    </div>
            </div>
        </asp:Panel>
<asp:Panel ID="pnlNewEditHeader" runat="server" Visible="false">
<center>
    <asp:Label ID="lblHeader" runat="server" Text="New Record"></asp:Label>
</center>
</asp:Panel>
<div class="floatleft">
    <asp:Panel ID="pnlFields" runat="server" Enabled="false">
    <asp:Panel ID="pnlLayout" runat="server">
            <asp:Table ID="Table4" runat="server">
                    <asp:TableRow>
                        <asp:TableCell CssClass="leftCol">
                            <asp:Label ID="lbllayout" runat="server" AssociatedControlID="DDLLayout" Text="Layout"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList ID="DDLLayout" runat="server" Width="323px" OnSelectedIndexChanged="DDLLayout_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <asp:Panel ID="pnlFirstName" runat="server" Visible="false">
                    <asp:Table ID="Table1" runat="server">
                    <asp:TableRow>
                        <asp:TableCell CssClass="leftCol">
                            <asp:Label ID="lblFirstname" runat="server" AssociatedControlID="txtFirstname" Text="FirstName"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtFirstname" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblFirstnameRequired" runat="server" Text="*" CssClass="failureNotification" Visible="false"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    </asp:Table>
        </asp:Panel>
        <asp:Panel ID="pnlSurname" runat="server" Visible="false">
                    <asp:Table ID="Table2" runat="server">
                    <asp:TableRow>
                        <asp:TableCell CssClass="leftCol">
                            <asp:Label ID="lblSurname" runat="server" AssociatedControlID="txtSurname" Text="Surname"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtSurname" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblSurnameRequired" runat="server" Text="*" CssClass="failureNotification" Visible="false"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    </asp:Table>
        </asp:Panel>
        <asp:Panel ID="pnlDateOfBirth" runat="server" Visible="false">
                    <asp:Table ID="Table6" runat="server">
                    <asp:TableRow>
                        <asp:TableCell CssClass="leftCol">
                            <asp:Label ID="lblDateOfBirth" runat="server" AssociatedControlID="txtDateOfBirth" Text="Date Of Birth"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblDateOfBirthRequired" runat="server" Text="*" CssClass="failureNotification" Visible="false"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    </asp:Table>
        </asp:Panel>
        <asp:Panel ID="pnlAddress" runat="server" Visible="false">
                    <asp:Table ID="Table3" runat="server">
                        <asp:TableRow>
                            <asp:TableCell CssClass="leftCol">
                                <asp:Label ID="lblAddress" runat="server" AssociatedControlID="txtAddress" Text="Address"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="leftCol">
                                <asp:Label ID="lblSuburb" runat="server" AssociatedControlID="txtSuburb" Text="Suburb"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtSuburb" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="leftCol">
                                <asp:Label ID="lblPostcode" runat="server" AssociatedControlID="txtPostcode" Text="Postcode"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtPostcode" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="leftCol">
                                <asp:Label ID="lblState" runat="server" AssociatedControlID="txtState" Text="State"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtState" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
        </asp:Panel>
        <asp:Panel ID="pnlPrintedID" runat="server" Visible="false">
                    <asp:Table ID="Table9" runat="server">
                    <asp:TableRow>
                        <asp:TableCell CssClass="leftCol">
                            <asp:Label ID="lblPrintedID" runat="server" AssociatedControlID="lblPrintedID" Text="PrintedID"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtPrintedID" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblPrintedIDRequired" runat="server" Text="*" CssClass="failureNotification" Visible="false"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    </asp:Table>
        </asp:Panel>
        <asp:Panel ID="pnlBarcode" runat="server" Visible="false">
                    <asp:Table ID="Table11" runat="server">
                    <asp:TableRow>
                        <asp:TableCell CssClass="leftCol">
                            <asp:Label ID="lblBarcode" runat="server" AssociatedControlID="txtBarcode" Text="Barcode"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtBarcode" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblBarcodeRequired" runat="server" Text="*" CssClass="failureNotification" Visible="false"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    </asp:Table>
        </asp:Panel>
        <asp:Panel ID="pnlCustomField1" runat="server" Visible="false">
                    <asp:Table ID="Table12" runat="server">
                    <asp:TableRow>
                        <asp:TableCell CssClass="leftCol">
                            <asp:Label ID="lblCustomField1" runat="server" AssociatedControlID="txtCustomField1" Text="Custom Field 1"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtCustomField1" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblCustomField1Required" runat="server" Text="*" CssClass="failureNotification" Visible="false"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    </asp:Table>
        </asp:Panel>
        <asp:Panel ID="pnlCustomField2" runat="server" Visible="false">
                    <asp:Table ID="Table13" runat="server">
                    <asp:TableRow>
                        <asp:TableCell CssClass="leftCol">
                            <asp:Label ID="lblCustomField2" runat="server" AssociatedControlID="txtCustomField2" Text="Custom Field 2"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtCustomField2" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblCustomField2Required" runat="server" Text="*" CssClass="failureNotification" Visible="false"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    </asp:Table>
        </asp:Panel>
    </asp:Panel>
</div>
<div class="floatleftWithMargin">
        <div class="center">
            <asp:Panel ID="pnlPhoto" runat="server" Visible="false">
                <asp:Image ID="imgPhoto" runat="server" 
                    ImageUrl="~/Images/Objects/Placeholder.jpg" Width="180" Height="216" />
                <br />
                <br />
                <asp:Button ID="btnUploadPhoto" runat="server" Text="Upload Photo..." 
                    onclick="btnUploadPhoto_Click" CssClass="ButtonLarge"/>
                <br />
                <br />
                <asp:Button ID="btnRemovePhoto" runat="server" Text="Remove Photo" 
                    onclick="btnRemovePhoto_Click" CssClass="ButtonLarge" />
            </asp:Panel>
        </div>
</div>
</div>

<div class="clear"></div>
<br />

<asp:Panel ID="pnlDelete" runat="server" Visible="false">
    <center>
        <h1>Are you sure you wish to delete the current record?</h1>
    </center>
    <center>
        <asp:Button ID="btnConfirmDelete" runat="server" Text="Delete Record" 
            onclick="btnConfirmDelete_Click" CssClass="ButtonLarge"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDenyDelete" runat="server" Text="Cancel" 
            onclick="btnDenyDelete_Click" CssClass="ButtonSmall"/>
        <br />
        <br />
    </center>
</asp:Panel>
<asp:Panel ID="pnlEdit" runat="server" Visible="false">
    <center>
        <h1>Save changes?</h1>
    </center>
    <center>
        <asp:Button ID="btnConfirmEdit" runat="server" Text="Save Changes" 
            onclick="btnConfirmEdit_Click" CssClass="ButtonLarge" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDenyEdit" runat="server" Text="Cancel" 
            onclick="btnDenyEdit_Click" CssClass="ButtonSmall" />
        <br />
        <br />
    </center>
</asp:Panel>
<asp:Panel ID="pnlNew" runat="server" Visible="false">
    <center>
        <h1>Save new patron?</h1>
    </center>
    <center>
        <asp:Button ID="btnConfirmNew" runat="server" Text="Save Patron" 
            onclick="btnConfirmNew_Click" CssClass="ButtonLarge"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDenyNew" runat="server" Text="Cancel" 
            onclick="btnDenyNew_Click" CssClass="ButtonSmall"/>
        <br />
        <br />
    </center>
</asp:Panel>
<asp:Panel ID="pnlControls" runat="server">
    <center>
    <asp:Label ID="lblLastExported" runat="server" Text="Last order processed: "></asp:Label>
    <asp:Label ID="lblLastExportedValue" runat="server" Text="N/A"></asp:Label>
        
    </center>
 </asp:Panel>
 <br /><br />
</asp:Content>
