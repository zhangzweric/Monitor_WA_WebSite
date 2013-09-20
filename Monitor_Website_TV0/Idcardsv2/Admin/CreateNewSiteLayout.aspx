<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateNewSiteLayout.aspx.cs" Inherits="Idcards.CreateNewSiteLayout" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <h2>
            Create new site layout
        </h2>
        <asp:Panel ID="PnlError" runat="server" Visible = "false">
            <div id="content" class="clearfix">
                    <div id="ctl00_masterpageErrorMessage" class="masterpage-error-message">
                        <div class="message">
                            Site Layout could not be created. Please fix any errors below:
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
                            <asp:Label ID="LabelExternalSiteCode" runat="server" AssociatedControlID="txtExternalSiteCode">External Site Code:</asp:Label>
                            <asp:TextBox ID="txtExternalSiteCode" runat="server" CssClass="textEntry" Width="200px"></asp:TextBox>
                        </p>
                        <p>
                            <asp:Label ID="LabelLocked" runat="server" AssociatedControlID="chkLocked">Locked:</asp:Label>
                            <asp:CheckBox ID="chkLocked" runat="server" CssClass="chkRdoList"/>
                        </p>
                        <br />
                    </fieldset>
                </div>
            <p class="submitButton">
                <asp:Button ID="CreateSiteLayoutButton" runat="server" Text="Create Site" 
                    onclick="CreateSiteLayoutButton_Click" CssClass="ButtonLarge" />
            </p>
</asp:Content>
