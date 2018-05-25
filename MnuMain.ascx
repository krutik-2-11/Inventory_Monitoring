<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MnuMain.ascx.cs" Inherits="MnuMain" %>
<asp:Menu ID="mainMnu" runat="server" Orientation="Horizontal" Font-Bold="True">
    <DynamicMenuItemStyle BackColor="#999999" Font-Bold="True" />
    <Items>
        <asp:MenuItem Text="Product" Value="Product">
            <asp:MenuItem NavigateUrl="~/Products.aspx" Text="Add Product" 
                Value="Add Product"></asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="Supplier" Value="Supplier">
            <asp:MenuItem NavigateUrl="~/Suppliers.aspx" Text="Add Supplier" 
                Value="Add Supplier"></asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="Sale" Value="Sale">
            <asp:MenuItem NavigateUrl="~/Sales.aspx" Text="Add Sale" Value="Add Sale">
            </asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="Purchase" Value="Purchase">
            <asp:MenuItem NavigateUrl="~/Purchases.aspx" Text="add Purchase" 
                Value="add Purchase"></asp:MenuItem>
        </asp:MenuItem>
    </Items>
</asp:Menu>

