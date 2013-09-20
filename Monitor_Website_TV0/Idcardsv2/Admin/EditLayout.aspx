<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditLayout.aspx.cs" Inherits="Idcards.Admin.EditLayout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <h2>
            Edit Layout
        </h2>   
        <div class="accountInfo">
            <fieldset class="login">
                <legend>Edit Layout</legend>
                <asp:Label ID="lblLayoutName" runat="server" AssociatedControlID="txtLayoutName">Layout Name:</asp:Label>
                    <asp:TextBox ID="txtLayoutName" runat="server" CssClass="textEntry" 
                    Width="323px" TabIndex="50"></asp:TextBox>
                    <br />
                    <br />
                <asp:Panel ID="PnlLocked" runat="server" >
                    <asp:CheckBox ID="chkLocked" runat="server" Text="Locked" AutoPostBack="true" 
                        CssClass="chkRdoList" TabIndex="51" />
                </asp:Panel>
                <br />
                <asp:Panel ID="PnlAddressBlockEnabled" runat="server" >
                    <asp:CheckBox ID="chkAddressBlockEnabled" runat="server" 
                        Text="Enable Address block" AutoPostBack="true" CssClass="chkRdoList" 
                        TabIndex="52" />
                </asp:Panel>
                <br />
                <asp:Panel ID="pnlPhotoEnabled" runat="server" >
                    <asp:CheckBox ID="chkPhotoEnabled" runat="server" Text="Enable Photos" 
                        AutoPostBack="true" CssClass="chkRdoList" TabIndex="53" />
                </asp:Panel>
                <br />
                <asp:Table ID="tblLayout" runat="server" BorderWidth="1" GridLines="Both" Width="100%">
                    <asp:TableRow>
                        <asp:TableHeaderCell Width="20%">Item</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="10%">Enabled</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="20%">Label</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="10%">Required</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="10%">Must Be Numeric</asp:TableHeaderCell>
                    </asp:TableRow>
                    <asp:TableRow HorizontalAlign="Center" Height="50">
                        <asp:TableCell><asp:Label ID="lblFirstname" runat="server" Text="Firstname"></asp:Label></asp:TableCell>
                        <asp:TableCell><asp:CheckBox ID="chkFirstnameEnabled" runat="server" TabIndex="54"/></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtFirstname" runat="server" Width="90%" TabIndex="55"></asp:TextBox></asp:TableCell>
                        <asp:TableCell><asp:CheckBox ID="chkFirstnameRequired" runat="server" TabIndex="56"/></asp:TableCell>
                        <asp:TableCell><asp:CheckBox ID="chkFirstnameNumeric" runat="server" TabIndex="57"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow HorizontalAlign="Center"  Height="50">
                        <asp:TableCell><asp:Label ID="lblSurname" runat="server" Text="Surname"></asp:Label></asp:TableCell>
                        <asp:TableCell><asp:CheckBox ID="chkSurnameEnabled" runat="server" TabIndex="58"/></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtSurname" runat="server" Width="90%" TabIndex="59"></asp:TextBox></asp:TableCell>
                        <asp:TableCell><asp:CheckBox ID="chkSurnameRequired" runat="server" TabIndex="60"/></asp:TableCell>
                        <asp:TableCell><asp:CheckBox ID="chkSurnameNumeric" runat="server" TabIndex="61"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow HorizontalAlign="Center"  Height="50">
                        <asp:TableCell><asp:Label ID="lblDateOfBirth" runat="server" Text="Date Of Birth"></asp:Label></asp:TableCell>
                        <asp:TableCell><asp:CheckBox ID="chkDateOfBirthEnabled" runat="server" TabIndex="62"/></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtDateOfBirth" runat="server" Width="90%" TabIndex="63"></asp:TextBox></asp:TableCell>
                        <asp:TableCell><asp:CheckBox ID="chkDateOfBirthRequired" runat="server" TabIndex="64"/></asp:TableCell>
                        <asp:TableCell><asp:CheckBox ID="chkDateOfBirthNumeric" runat="server" TabIndex="65"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow HorizontalAlign="Center"  Height="50">
                        <asp:TableCell><asp:Label ID="lblPrintedID" runat="server" Text="PrintedID"></asp:Label></asp:TableCell>
                        <asp:TableCell><asp:CheckBox ID="chkPrintedIDEnabled" runat="server" TabIndex="66"/></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtPrintedID" runat="server" Width="90%" TabIndex="67"></asp:TextBox></asp:TableCell>
                        <asp:TableCell><asp:CheckBox ID="chkPrintedIDRequired" runat="server" TabIndex="68"/></asp:TableCell>
                        <asp:TableCell><asp:CheckBox ID="chkPrintedIDNumeric" runat="server" TabIndex="69"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow HorizontalAlign="Center"  Height="50">
                        <asp:TableCell><asp:Label ID="lblBarcode" runat="server" Text="Barcode"></asp:Label></asp:TableCell>
                        <asp:TableCell><asp:CheckBox ID="chkBarcodeEnabled" runat="server" TabIndex="70"/></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtBarcode" runat="server" Width="90%" TabIndex="71"></asp:TextBox></asp:TableCell>
                        <asp:TableCell><asp:CheckBox ID="chkBarcodeRequired" runat="server" TabIndex="72"/></asp:TableCell>
                        <asp:TableCell><asp:CheckBox ID="chkBarcodeNumeric" runat="server" TabIndex="73"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow HorizontalAlign="Center"  Height="50">
                        <asp:TableCell><asp:Label ID="lblCustomField1" runat="server" Text="CustomField1"></asp:Label></asp:TableCell>
                        <asp:TableCell><asp:CheckBox ID="chkCustomField1Enabled" runat="server" TabIndex="74"/></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtCustomField1" runat="server" Width="90%" TabIndex="75"></asp:TextBox></asp:TableCell>
                        <asp:TableCell><asp:CheckBox ID="chkCustomField1Required" runat="server" TabIndex="76"/></asp:TableCell>
                        <asp:TableCell><asp:CheckBox ID="chkCustomField1Numeric" runat="server" TabIndex="77"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow HorizontalAlign="Center"  Height="50">
                        <asp:TableCell><asp:Label ID="lblCustomField2" runat="server" Text="CustomField2"></asp:Label></asp:TableCell>
                        <asp:TableCell><asp:CheckBox ID="chkCustomField2Enabled" runat="server" TabIndex="78"/></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtCustomField2" runat="server" Width="90%" TabIndex="79"></asp:TextBox></asp:TableCell>
                        <asp:TableCell><asp:CheckBox ID="chkCustomField2Required" runat="server" TabIndex="80"/></asp:TableCell>
                        <asp:TableCell><asp:CheckBox ID="chkCustomField2Numeric" runat="server" TabIndex="81"/></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </fieldset>
        </div>
        <p class="submitButton">
            <asp:Button ID="btnEditLayer" runat="server" Text="Save Changes" TabIndex="82" 
                onclick="btnEditLayer_Click" CssClass="ButtonLarge"/>
            &nbsp;
            <asp:Button ID="EditSiteCancel" runat="server" Text="Cancel" TabIndex="82" 
                onclick="CancelButton_Click" CssClass="ButtonSmall" />
        </p>
</asp:Content>
