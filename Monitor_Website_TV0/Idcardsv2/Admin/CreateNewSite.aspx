<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateNewSite.aspx.cs" Inherits="IDCards.CreateNewSite" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <h2>
            Create new site
        </h2>
        <asp:Panel ID="PnlError" runat="server" Visible = "false">
            <div id="content" class="clearfix">
                    <div id="ctl00_masterpageErrorMessage" class="masterpage-error-message">
                        <div class="message">
                            Site could not be created. Please fix any errors below:
                            <ul>
                                <asp:Literal ID="litError" runat="server"></asp:Literal>
                            </ul>
                        </div>
                    </div>
            </div>
        </asp:Panel>
                <div class="accountInfo">
                    <fieldset class="login">
                        <legend>Site Details</legend>
                        <p>
                            <asp:Label ID="SiteNameLabel" runat="server" AssociatedControlID="SiteName">Site Name:</asp:Label>
                            <asp:TextBox ID="SiteName" runat="server" CssClass="textEntry" Width="323px" AutoPostBack="True"></asp:TextBox>
                            <span class="failureNotification">&nbsp;*</span>
                        </p>
                        <p>
                            <asp:Label ID="SiteTypeLabel" runat="server" AssociatedControlID="SiteTypeDDL">SiteType:</asp:Label>
                            <asp:DropDownList ID="SiteTypeDDL" runat="server" CssClass="textEntry" Width="200px"></asp:DropDownList>
                        </p>
                    </fieldset>
                </div>
        </ContentTemplate>
    </asp:UpdatePanel>
            <p class="submitButton">
                <asp:Button ID="CreateSiteButton" runat="server" Text="Create Site" onclick="CreateSiteButton_Click" />
            </p>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .textEntry
        {}
    </style>
</asp:Content>

