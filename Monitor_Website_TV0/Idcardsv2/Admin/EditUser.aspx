<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="Idcards.Admin.EditUser" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <h2>
            Edit User
        </h2>
            <div class="accountInfo">
                <fieldset class="login">
                    <legend>User Details</legend>
                    <p>
                        <asp:Label ID="lblUserName" runat="server" AssociatedControlID="txtUserName" >User Name:</asp:Label>
                        <asp:TextBox ID="txtUserName" runat="server" CssClass="textEntry" Width="323px" Enabled="false"></asp:TextBox>
                        <asp:Label ID="lblSite" runat="server" AssociatedControlID="DDLSite" >Site:</asp:Label>
                        <asp:DropDownList ID="DDLSite" runat="server" CssClass="textEntry" Width="200px"></asp:DropDownList>
                        <asp:Label ID="lblUserLocked" runat="server" AssociatedControlID="cbxUserLocked">Locked:</asp:Label>
                        <asp:CheckBox ID="cbxUserLocked" runat="server" />
                        <asp:Label ID="lblUserMustChangePassword" runat="server" AssociatedControlID="cbxUserMustChangePassword">Must Change Password (On next login):</asp:Label>
                        <asp:CheckBox ID="cbxUserMustChangePassword" runat="server" />
                        <asp:Label ID="lblResetPassword" runat="server" AssociatedControlID="btnResetPassword">Reset Password:</asp:Label>
                        <asp:Button ID="btnResetPassword" runat="server" Text="Reset Password" 
                            onclick="ResetPassword_Click" style="height: 29px" CssClass="ButtonLarge"/>
                        <asp:Label ID="lblGeneratedPassword" runat="server" AssociatedControlID="txtGeneratedPassword" Visible="false">Generated Password:</asp:Label>
                        <asp:TextBox ID="txtGeneratedPassword" runat="server" CssClass="textEntry" Width="323px" Visible="false" ></asp:TextBox>
                    </p>
                </fieldset>
                      <fieldset class="login">
                        <legend>Optional Details</legend>
                        <p>
                            <asp:Label ID="lblContactName" runat="server" AssociatedControlID="txtContactName">Contact Name:</asp:Label>
                            <asp:TextBox ID="txtContactName" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
                            <asp:Label ID="lblContactEmail" runat="server" AssociatedControlID="txtContactEmail">Contact Email Address:</asp:Label>
                            <asp:TextBox ID="txtContactEmail" runat="server" Width="323px"  CssClass="textEntry"></asp:TextBox>
                            <asp:Label ID="lblContactPhoneLabel" runat="server" AssociatedControlID="txtContactPhone">Contact Phone:</asp:Label>
                            <asp:TextBox ID="txtContactPhone" runat="server" Width="323px"  CssClass="textEntry"></asp:TextBox>
                        </p>
                    </fieldset>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
            <p class="submitButton">
                <asp:Button ID="EditUserButton" runat="server" Text="Save Changes" 
                    onclick="SaveChangesButton_Click" CssClass="ButtonLarge" />
            &nbsp;<asp:Button ID="EditUserCancel" runat="server" Text="Cancel" 
                    onclick="CancelButton_Click" CssClass="ButtonSmall" />
            </p>
</asp:Content>