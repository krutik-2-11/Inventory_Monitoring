﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowPurchases.aspx.cs" Inherits="ShowPurchases" %>


<%@ Register src="MainMenu.ascx" tagname="MainMenu" tagprefix="uc1" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show Purchases</title>
    <link href="Stylesheet/my.css" rel="stylesheet" type="text/css" />
</head>
<body>
    
    <form id="form1" runat="server">
    <div>
        <uc1:MainMenu ID="MainMenu1" runat="server" />
        <table border="2" class="tablegrid" cellpadding="5" cellspacing="0" width ="100%">
            <tr>
                <th>
                    Show Purchases
                </th>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblProductName" Text="ProductName" runat="server"></asp:Label>
                    <asp:TextBox ID="txtProductName" CssClass="textfield" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSearch" Text="Search" CssClass="smartbutton" runat="server" 
                        onclick="btnSearch_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                    <asp:GridView ID="grdPurchases" AutoGenerateColumns="false" runat="server" Width="100%" OnRowCommand="grdPurchases_RowCommand" OnRowDeleting="grdPurchases_RowDeleting">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <a href='Purchases.aspx?id=<%#Eval("id") %>'>Edit</a>
                                    <asp:LinkButton ID="lnkDelete" runat="server" CommandName="delete" Text="Delete" CommandArgument='<%# Eval("id") %>'></asp:LinkButton>

                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Id" HeaderText="ID" />
                            <asp:BoundField DataField="SupplierID" HeaderText="Supplier ID" />
                            <asp:BoundField DataField="ProductID" HeaderText="Product ID" />
                            <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                            <asp:BoundField DataField="PurchaseCost" HeaderText="Purchase Cost" />
                            <asp:BoundField DataField="DOP" HeaderText="DOP" />
                        </Columns>
                    </asp:GridView>
                    <asp:Label ID="lblNoRecordFound" Text="No Record Found" runat="server" Font-Size="XX-Large"
                        Font-Bold="true" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
