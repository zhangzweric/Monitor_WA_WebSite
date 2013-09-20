<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="Idcards.Admin.ManageUsers" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h1>
Manage Users
</h1>
<div>
<fieldset class="New">
    <legend>Actions</legend>
    <p>
        <asp:Button ID="btnNewUser" runat="server" CssClass="ButtonLarge" Text="Create New User" 
            onclick="btnNewUser_Click" />
    </p>
</fieldset>
<fieldset class="login">
    <legend>Search Options</legend>
    <p>
        <asp:Label ID="lblSearchUserName" runat="server" AssociatedControlID="txtSearchUserName">User Name:</asp:Label>
        <asp:TextBox ID="txtSearchUserName" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
        <asp:Label ID="lblSearchSiteName" runat="server" AssociatedControlID="txtSearchSiteName">Site Name:</asp:Label>
        <asp:TextBox ID="txtSearchSiteName" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
        <asp:Label ID="lblSearchLocked" runat="server" AssociatedControlID="DDLSearchLocked">Locked:</asp:Label>
        <asp:DropDownList ID="DDLSearchLocked" runat="server" Width="200px">
            <asp:ListItem Value="-1">All</asp:ListItem>
            <asp:ListItem Value="0">False</asp:ListItem>
            <asp:ListItem Value="1">True</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="lblSearchAdmin" runat="server" AssociatedControlID="DDLSearchAdmin">Admin:</asp:Label>
        <asp:DropDownList ID="DDLSearchAdmin" runat="server" Width="200px">
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
    <asp:GridView ID="grdUser" runat="server" 
            CellPadding="3" GridLines="Both" Width="960px" BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
            AutoGenerateColumns="False" DataKeyNames="UserID" 
            onrowcommand="grdUser_RowCommand" 
            ShowHeaderWhenEmpty="True">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <EmptyDataTemplate>
            <asp:Label ID="lblEmptySearch" runat="server">No Results Found</asp:Label>
        </EmptyDataTemplate>
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText ="UserID" Visible = "False" />
            <asp:BoundField DataField="Username" HeaderText ="Username"/>
            <asp:BoundField DataField="SiteName" HeaderText="Site Name" />
            <asp:BoundField DataField="Locked" HeaderText ="Locked"/>
            <asp:BoundField DataField="AdminUser" HeaderText="Admin" />
            <asp:ButtonField ButtonType="Button" CommandName="Edit" Text="Edit User" HeaderText = "Edit" ControlStyle-CssClass="ButtonSmall" ItemStyle-Width="1px" />
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
