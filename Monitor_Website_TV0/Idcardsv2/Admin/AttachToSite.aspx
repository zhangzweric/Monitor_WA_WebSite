<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AttachToSite.aspx.cs" Inherits="Idcards.Admin.AttachToSite" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <h2>
            Attach to Site
        </h2>
            <div class="accountInfo">
                <fieldset class="login">
                    <legend>Attach to site</legend>
                        <p>
                            <asp:Label ID="SiteNameLabel" runat="server" AssociatedControlID="SiteNameDDL">Site:</asp:Label>
                            <asp:DropDownList ID="SiteNameDDL" runat="server" CssClass="textEntry" Width="325px"></asp:DropDownList>
                        </p>
                </fieldset>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
            <p class="submitButton">
                <asp:Button ID="btnAttachToSite" runat="server" Text="Attach" 
                    onclick="CreateSiteButton_Click" CssClass="ButtonSmall" />
            </p>
</asp:Content>
