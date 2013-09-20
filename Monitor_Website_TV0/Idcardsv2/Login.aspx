<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="IDCards.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div id="content">
	<div class="wrapper">
        <div class="col-1">
            <div class="indent">
        		<h1>IDCards</h1>
                <p0>Welcome to the Monitor WA IDCards portal. This site has been created to allow staff at schools and other institutions to order staff, driver cards and other non-concession cards online. Please contact <a href="mailto:support@monitorwa.com.au">support@monitorwa.com.au</a> for assistance or to apply for an online account.</p0><br /><br /><br /><p0>Parents, guardians and students wishing to purchase SmartRider Student Concession cards online should use the public site available <a href="https://idcards.monitorwa.com.au" target="_blank">here</a>.</p0>
            </div>
        </div>
        <div class="col-2">
            <div class="indent1">
    		<h1>Login</h1>
    		<asp:Panel ID="PnlError" runat="server" Visible = "false">
            <div id="content" class="clearfix">
                <div id="ctl00_masterpageErrorMessage" class="masterpage-error-message">
                    <div class="message">
                        Login failed. Possible reason(s):
                        <ul><asp:Literal ID="litError" runat="server"></asp:Literal></ul>
                    </div>
                </div>
            </div>
        	</asp:Panel>
        	<div class="accountInfo">
            	<fieldset class="login">
                <legend>Login Details</legend>
                <p>
                	<asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                    <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>&nbsp;<asp:Label ID="UserNameError" runat="server" CssClass="failureNotification" Visible="false">*</asp:Label>
                </p>
                <p>
                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                    <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>&nbsp;<asp:Label ID="PasswordError" runat="server" CssClass="failureNotification" Visible="false">*</asp:Label>
                </p>
            	</fieldset>
            	<p class="submitButton">
                	<asp:Button ID="LoginButton" runat="server" CommandName="LoginUser" Text="Log in" ValidationGroup="LoginUserValidationGroup" onclick="LoginButton_Click" CssClass="ButtonSmall"/>
            	</p>
        	</div>
            </div>
        </div>
    </div>
</div>
</asp:Content>

