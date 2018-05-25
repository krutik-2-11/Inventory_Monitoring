<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowSuppliers.aspx.cs" Inherits="ShowSuppliers" %>

<%@ Register Src="MainMenu.ascx" TagName="MainMenu" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show Suppliers</title>
    <link href="Stylesheet/my.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:MainMenu ID="MainMenu1" runat="server" />
        <table border="2" class="tablegrid" cellpadding="5" cellspacing="0" width="100%">
            <tr>
                <th>
                    Show Suppliers
                </th>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblSupplierName" Text="SupplierName" runat="server"></asp:Label>
                    <asp:TextBox ID="txtSupplierName" CssClass="textfield" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSearch" Text="Search" CssClass="smartbutton" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                    <asp:GridView ID="grdSuppliers" AutoGenerateColumns="false" runat="server" Width="100%" OnRowCommand="grdSuppliers_RowCommand" OnRowDeleting="grdSuppliers_RowDeleting">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <a href='Suppliers.aspx?id=<%#Eval("id") %>'>Edit</a>
                                    <asp:LinkButton ID="lnkDelete" runat="server" CommandName="delete" Text="Delete" CommandArgument='<%# Eval("id") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Id" HeaderText="Id" />
                            <asp:BoundField DataField="SupplierName" HeaderText="SupplierName" />
                            <asp:BoundField DataField="Address" HeaderText="Address" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" />
                            <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                            <asp:BoundField DataField="Email" HeaderText="Email" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
