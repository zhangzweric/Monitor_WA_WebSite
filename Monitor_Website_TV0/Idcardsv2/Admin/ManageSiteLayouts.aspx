<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageSiteLayouts.aspx.cs" Inherits="Idcards.ManageSiteLayouts" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h1>
Manage Site Layouts
</h1>
<div>
<fieldset class="New">
    <legend>Actions</legend>
    <p>
        <asp:Button ID="btnNewSiteLayout" runat="server" CssClass="ButtonExtraLarge" Text="Create New Site Layout" 
            onclick="btnNewSiteLayout_Click" />
    </p>
</fieldset>
<fieldset class="login">
    <legend>Search Options</legend>
    <p>
        <asp:Label ID="lblSiteName" runat="server" AssociatedControlID="DDLSearchSiteName">Site:</asp:Label>
        <asp:DropDownList ID="DDLSearchSiteName" runat="server" Width="200px"></asp:DropDownList>
        <asp:Label ID="lblSearchLayout" runat="server" AssociatedControlID="DDLSearchLayout">Layout:</asp:Label>
        <asp:DropDownList ID="DDLSearchLayout" runat="server" Width="200px"></asp:DropDownList>
        <asp:Label ID="lblExternalSiteCode" runat="server" AssociatedControlID="txtExternalSiteCode">External Site Code:</asp:Label>
        <asp:TextBox ID="txtExternalSiteCode" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>    
        <asp:Label ID="lblSearchLocked" runat="server" AssociatedControlID="DDLSearchLocked">Locked:</asp:Label>
        <asp:DropDownList ID="DDLSearchLocked" runat="server" Width="200px">
            <asp:ListItem Value="-1">All</asp:ListItem>
            <asp:ListItem Value="0">False</asp:ListItem>
            <asp:ListItem Value="1">True</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:Button ID="btnSearch" runat="server" CssClass="ButtonSmall" Text="Search" 
            onclick="btnSearch_Click" />
    &nbsp;
        <asp:Button ID="btnSearchClear" runat="server" CssClass="ButtonSmall" Text="Clear" 
            onclick="btnSearchClear_Click" />
    </p>
</fieldset>
</div>
    <asp:GridView ID="grdSiteLayout" runat="server" 
            CellPadding="3" GridLines="Both" Width="960px" BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
            AutoGenerateColumns="False" DataKeyNames="SiteLayoutID" 
            onrowcommand="grdSiteLayout_RowCommand" 
            ShowHeaderWhenEmpty="True" >
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <EmptyDataTemplate>
            <asp:Label ID="lblEmptySearch" runat="server">No Results Found</asp:Label>
        </EmptyDataTemplate>
        <Columns>
            <asp:BoundField DataField="SiteLayoutID" HeaderText ="SiteLayoutID" Visible = "False" />
            <asp:BoundField DataField="SiteName" HeaderText ="Site Name"/>
            <asp:BoundField DataField="LayoutName" HeaderText ="Layout Name"/>
            <asp:BoundField DataField="ExternalSiteCode" HeaderText ="External Site Code"/>
            <asp:BoundField DataField="Locked" HeaderText ="Locked"/>
            <asp:ButtonField ButtonType="Button" CommandName="Edit" Text="Edit Site Layout" HeaderText = "Edit" ControlStyle-CssClass="ButtonLarge" ItemStyle-Width="1px" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>

    <br />

    <asp:Label ID="lblRecordCount" runat="server" Text="RecordCount"></asp:Label>
<br /><br />
</asp:Content>
