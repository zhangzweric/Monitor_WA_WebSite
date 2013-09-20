<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Idcards.Search" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h1>
Search Options
</h1>
<fieldset class="login">
    <legend>Search Options</legend>
    <p>
        <asp:Label ID="lblSearchFirstname" runat="server" AssociatedControlID="txtSearchFirstname">First Name:</asp:Label>
        <asp:TextBox ID="txtSearchFirstname" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
        <asp:Label ID="lblSearchSurname" runat="server" AssociatedControlID="txtSearchSurname">Surname:</asp:Label>
        <asp:TextBox ID="txtSearchSurname" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>       
        <asp:Label ID="lblSearchDateOfBirth" runat="server" AssociatedControlID="txtSearchDateOfBirth">Date Of Birth:</asp:Label>
        <asp:TextBox ID="txtSearchDateOfBirth" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
        <asp:Label ID="lblSearchPrintedID" runat="server" AssociatedControlID="txtSearchPrintedID">PrintedID:</asp:Label>
        <asp:TextBox ID="txtSearchPrintedID" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
        <asp:Label ID="lblSearchBarcode" runat="server" AssociatedControlID="txtSearchBarcode">Barcode:</asp:Label>
        <asp:TextBox ID="txtSearchBarcode" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
        <asp:Label ID="lblSearchCustomField1" runat="server" AssociatedControlID="txtSearchCustomField1">CustomField1:</asp:Label>
        <asp:TextBox ID="txtSearchCustomField1" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
        <asp:Label ID="lblSearchCustomField2" runat="server" AssociatedControlID="txtSearchCustomField2">CustomField2:</asp:Label>
        <asp:TextBox ID="txtSearchCustomField2" runat="server" CssClass="textEntry" Width="323px"></asp:TextBox>
        <asp:Label ID="lblSearchLayout" runat="server" AssociatedControlID="DDLSearchLayout">Layout:</asp:Label>
        <asp:DropDownList ID="DDLSearchLayout" runat="server" Width="327px" 
            AutoPostBack="true" 
            onselectedindexchanged="DDLSearchLayout_SelectedIndexChanged" />
    </p>
    <p>
        <asp:Button ID="btnSearch" runat="server" CssClass="ButtonSmall" Text="Search" 
            onclick="btnSearch_Click" />
        &nbsp;&nbsp;
        <asp:Button ID="btnClear" runat="server" CssClass="ButtonSmall" Text="Clear" 
            onclick="btnClear_Click" />
    </p>
</fieldset>
<div>
    <p>
    </p>
</div>

<h1>
Search Result
</h1>
<div>
    <p>
    </p>
</div>
    <asp:GridView ID="grdSearchResult" runat="server" 
            CellPadding="3" GridLines="Both" Width="960px" BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
            AutoGenerateColumns="False" DataKeyNames="PatronID,Queued"
            ShowHeaderWhenEmpty="True" onrowcommand="grdSearchResult_RowCommand" 
        ShowFooter="True" ViewStateMode="Disabled" >
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <EmptyDataTemplate>
            <asp:Label ID="lblEmptySearch" runat="server">No Search Results Found</asp:Label>
        </EmptyDataTemplate>
        <Columns>
            <asp:BoundField DataField="PatronID"    HeaderText ="PatronID" Visible="False"/>
            <asp:TemplateField HeaderText = "Order Status" ItemStyle-Width="1px">
                <ItemTemplate>
                    <asp:button text='<%# Convert.ToBoolean(Eval("Queued")) ? "Cancel Order" : "Queue Order"%>' runat="server" commandname="Queued" CommandArgument="<%# Container.DataItemIndex %>" id="btnQueued" CssClass="ButtonMedium" />
                </ItemTemplate> 
            </asp:TemplateField>   
            <asp:TemplateField HeaderText = "View Patron" ItemStyle-Width="1px">
                <ItemTemplate>
                    <asp:button text='View' runat="server" commandname="View" CommandArgument="<%# Container.DataItemIndex %>" id="btnView" CssClass="ButtonSmall"/>
                </ItemTemplate> 
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White"/>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black"/>
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
