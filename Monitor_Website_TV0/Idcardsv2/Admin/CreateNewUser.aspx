<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateNewUser.aspx.cs" Inherits="IDCards.CreateNewUser" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <h2>
            Create new user
        </h2>
        <asp:Panel ID="PnlError" runat="server" Visible = "false">
            <div id="content" class="clearfix">
                    <div id="ctl00_masterpageErrorMessage" class="masterpage-error-message">
                        <div class="message">
                            User could not be created. Please fix any errors below:
                            <ul>
                                <asp:Literal ID="litError" runat="server"></asp:Literal>
                            </ul>
                        </div>
                    </div>
            </div>
        </asp:Panel>
                <div class="accountInfo">
                    <fieldset class="login">
                        <legend>User Details</legend>
                        <p>
                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                            <asp:TextBox ID="UserName" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
                            <span class="failureNotification">&nbsp;*</span><asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                            <asp:TextBox ID="Password" runat="server" Width="323px"  CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                            <span class="failureNotification">&nbsp;*</span><asp:Label ID="PasswordConfirmLabel" runat="server" AssociatedControlID="PasswordConfirm">Confirm Password:</asp:Label>
                            <asp:TextBox ID="PasswordConfirm" runat="server" Width="323px"  CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                            <span class ="failureNotification">&nbsp;*</span>
                        </p>
                        <p>
                            <asp:Label ID="SiteNameLabel" runat="server" AssociatedControlID="SiteNameDDL">Site:</asp:Label>
                            <asp:DropDownList ID="SiteNameDDL" runat="server" CssClass="textEntry" 
                                Width="325px"></asp:DropDownList>
                        </p>
                        <p>
                            <asp:CheckBox ID="cbxMustChangePassword" runat="server" 
                                Text="Must Change Password (On next Login)" CssClass="chkRdoList"/>
                        </p>
                    </fieldset>
                    <fieldset class="login">
                        <legend>Optional Details</legend>
                        <p>
                            <asp:Label ID="ContactNameLabel" runat="server" AssociatedControlID="ContactName">Contact Name:</asp:Label>
                            <asp:TextBox ID="ContactName" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
                            <asp:Label ID="ContactEmailLabel" runat="server" AssociatedControlID="ContactEmail">Contact Email Address:</asp:Label>
                            <asp:TextBox ID="ContactEmail" runat="server" Width="323px"  CssClass="textEntry"></asp:TextBox>
                            <asp:Label ID="ContactPhoneLabel" runat="server" AssociatedControlID="ContactPhone">Contact Phone:</asp:Label>
                            <asp:TextBox ID="ContactPhone" runat="server" Width="323px"  CssClass="textEntry"></asp:TextBox>
                        </p>
                    </fieldset>
                </div>
        </ContentTemplate>
    </asp:UpdatePanel>
            <p class="submitButton">
                <asp:Button ID="CreateUserButton" runat="server" Text="Create User" 
                    onclick="CreateUserButton_Click" CssClass="ButtonLarge" />
            </p>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="HeadContent">
</asp:Content>

