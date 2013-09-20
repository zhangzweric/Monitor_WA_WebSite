<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditSiteLayout.aspx.cs" Inherits="Idcards.Admin.EditSiteLayout" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <h2>
            Edit Site Layout
        </h2>
        <asp:Panel ID="PnlError" runat="server" Visible = "false">
            <div id="content" class="clearfix">
                    <div id="ctl00_masterpageErrorMessage" class="masterpage-error-message">
                        <div class="message">
                            Site Layout could not be Edited. Please fix any errors below:
                            <ul>
                                <asp:Literal ID="litError" runat="server"></asp:Literal>
                            </ul>
                        </div>
                    </div>
            </div>
        </asp:Panel>
                <div class="accountInfo">
                    <fieldset class="login">
                        <legend>Site Layout Details</legend>
                        <p>
                            <asp:Label ID="LabelSiteName" runat="server" AssociatedControlID="DDLSiteName">Site Name:</asp:Label>
                            <asp:DropDownList ID="DDLSiteName" runat="server" CssClass="textEntry" Width="200px"></asp:DropDownList>
                        </p>
                        <p>
                            <asp:Label ID="SiteLayerLabel" runat="server" AssociatedControlID="DDLLayout">Layout:</asp:Label>
                            <asp:DropDownList ID="DDLLayout" runat="server" CssClass="textEntry" Width="200px"></asp:DropDownList>
                        </p>
                        <p>
                            <asp:Label ID="SiteLockedLabel" runat="server" AssociatedControlID="SiteLockedCbx">Locked:</asp:Label>
                            <asp:CheckBox ID="SiteLockedCbx" runat="server" CssClass="chkRdoList"/>
                        </p>
                        <br />
                        <p>
                            <asp:Label ID="LabelExternalSiteCode" runat="server" AssociatedControlID="txtExternalSiteCode">External Site Code:</asp:Label>
                            <asp:TextBox ID="txtExternalSiteCode" runat="server" CssClass="textEntry" Width="200px"></asp:TextBox>
                        </p>
                    </fieldset>
                </div>
            <p class="submitButton">
                <asp:Button ID="EditSiteLayoutButton" runat="server" Text="Save Changes" 
                    onclick="EditSiteLayoutButton_Click" CssClass="ButtonLarge" />
                &nbsp;
                <asp:Button ID="CancelSiteLayoutButton" runat="server" Text="Cancel" 
                    onclick="CancelSiteLayoutButton_Click" CssClass="ButtonSmall" />
            </p>
</asp:Content>
