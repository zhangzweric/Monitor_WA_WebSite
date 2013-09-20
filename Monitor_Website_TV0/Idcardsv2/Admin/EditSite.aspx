<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditSite.aspx.cs" Inherits="Idcards.Admin.EditSite" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <h2>
            Edit Site
        </h2>
            <div class="accountInfo">
                <fieldset class="login">
                    <legend>Site Details</legend>
                    <p>
                        <asp:Label ID="SiteNameLabel" runat="server" AssociatedControlID="SiteName">Site Name:</asp:Label>
                        <asp:TextBox ID="SiteName" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
                    </p>
                    <p>
                        <asp:Label ID="SiteTypeLabel" runat="server" AssociatedControlID="SiteTypeDDL">SiteType:</asp:Label>
                        <asp:DropDownList ID="SiteTypeDDL" runat="server" CssClass="textEntry" Width="200px"></asp:DropDownList>
                    </p>
                    <p>
                        <asp:Label ID="SiteLockedLabel" runat="server" AssociatedControlID="SiteLockedCbx">Locked:</asp:Label>
                        <asp:CheckBox ID="SiteLockedCbx" runat="server" CssClass="chkRdoList"/>
                    </p>
                </fieldset>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
            <p class="submitButton">
                <asp:Button ID="EditSiteButton" runat="server" Text="Save Changes" 
                    onclick="SaveChangesButton_Click" CssClass="ButtonLarge" />
            &nbsp;<asp:Button ID="EditSiteCancel" runat="server" Text="Cancel" 
                    onclick="CancelButton_Click" CssClass="ButtonSmall" />
            </p>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .textEntry
        {}
    </style>
</asp:Content>


