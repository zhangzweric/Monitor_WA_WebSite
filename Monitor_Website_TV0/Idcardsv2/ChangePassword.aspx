<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Idcards.ChangePassword" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <h1>Change Password</h1><br />
     	<asp:Panel ID="PnlError" runat="server" Visible = "false">
        <div id="content" class="clearfix">
            <div id="ctl00_masterpageErrorMessage" class="masterpage-error-message">
                <div class="message">
                    Password change failed. Possible reason(s):
                    <ul><asp:Literal ID="litError" runat="server"></asp:Literal></ul>
                </div>
            </div>
        </div>
        </asp:Panel>
 		<div class="accountInfo1">
            <fieldset class="login">
            	<legend>Change Password</legend>
            	<p><asp:Label ID="lblOldPasswordLabel" runat="server" AssociatedControlID="txtOldPassword">Current Password:</asp:Label><asp:TextBox ID="txtOldPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>&nbsp;<asp:Label ID="lblOldPasswordError" runat="server" CssClass="failureNotification" Visible="false">*</asp:Label></p>
            	<p><asp:Label ID="lblNewPassword1" runat="server" AssociatedControlID="txtNewPassword1">New Password:</asp:Label><asp:TextBox ID="txtNewPassword1" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>&nbsp;<asp:Label ID="lblNewPassword1Error" runat="server" CssClass="failureNotification" Visible="false">*</asp:Label></p>
            	<p><asp:Label ID="lblNewPassword2" runat="server" AssociatedControlID="txtNewPassword2">Confirm Password:</asp:Label><asp:TextBox ID="txtNewPassword2" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>&nbsp;<asp:Label ID="lblNewPassword2Error" runat="server" CssClass="failureNotification" Visible="false">*</asp:Label></p>
            </fieldset>
            <p class="submitButton"><asp:Button ID="btnSave" runat="server" CommandName="SavePassword" Text="Save" onclick="btnSave_Click" CssClass="ButtonSmall"/>&nbsp;<asp:Button ID="btnCancel" runat="server" CommandName="CancelPassword" Text="Cancel" onclick="btnCancel_Click" CssClass="ButtonSmall"/></p>
        </div>
</asp:Content>
