<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MainMenu.ascx.cs" Inherits="MainMenu" %>
<asp:Menu ID="Menu" runat="server" Orientation="Horizontal" 
    onmenuitemclick="Menu_MenuItemClick">
    <Items>
        <asp:MenuItem Text="Sales" Value="Sales">
            <asp:MenuItem NavigateUrl="~/Sales.aspx" Text="Add Sales" Value="Add Sales">
            </asp:MenuItem>
            <asp:MenuItem Text="Show Sales" Value="Show Sales" 
                NavigateUrl="~/ShowSales.aspx"></asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="Purchases" Value="Purchases">
            <asp:MenuItem NavigateUrl="~/Purchases.aspx" Text="Add Purchases" 
                Value="Add Purchases"></asp:MenuItem>
            <asp:MenuItem Text="Show Purchases" Value="Show Purchases" 
                NavigateUrl="~/ShowPurchases.aspx"></asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="Suppliers" Value="Suppliers">
            <asp:MenuItem NavigateUrl="~/Suppliers.aspx" Text="Add Suppliers" 
                Value="Add Suppliers"></asp:MenuItem>
            <asp:MenuItem Text="Show Suppliers" Value="Show Suppliers" 
                NavigateUrl="~/ShowSuppliers.aspx"></asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="Products" Value="Products">
            <asp:MenuItem NavigateUrl="~/Products.aspx" Text="Add Products" 
                Value="Add Products"></asp:MenuItem>
            <asp:MenuItem Text="Show Products" Value="Show Products" 
                NavigateUrl="~/ShowProducts.aspx"></asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/HomePage.aspx" Text="Log Out" Value="Log Out"></asp:MenuItem>
    </Items>
</asp:Menu>

