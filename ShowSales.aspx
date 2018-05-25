<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowSales.aspx.cs" Inherits="ShowSales" %>

<%@ Register Src="MainMenu.ascx" TagName="MainMenu" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show Sales</title>
    <link href="Stylesheet/my.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:MainMenu ID="MainMenu1" runat="server" />
            <table border="2" cellpadding="5" cellspacing="0" class="tablegrid" width="100%">
                <tr>
                    <th>Show Sales</th>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCustomerName" Text="Customer Name" runat="server"></asp:Label>
                        <asp:TextBox ID="txtCustomerName" CssClass="textfield" runat="server"></asp:TextBox>
                        <asp:Button ID="btnSearch" Text="Search" CssClass="smartbutton" runat="server" OnClick="btnSearch_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                        <asp:GridView ID="grdSales" AutoGenerateColumns="false" runat="server" Width="100%" OnRowCommand="grdSales_RowCommand" OnRowDeleting="grdSales_RowDeleting">
                            <Columns>
                                <asp:TemplateField>

                                    <ItemTemplate>
                                        <a href='Sales.aspx?id=<%#Eval("id") %>'>Edit</a>
                                        <asp:LinkButton ID="lnkDelete" runat="server" CommandName="delete" Text="Delete" CommandArgument='<%# Eval("id") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="ID" HeaderText="ID" />
                                <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" />
                                <asp:BoundField DataField="ProductId" HeaderText="Product Id" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                                <asp:BoundField DataField="Cost" HeaderText="Cost" />
                                <asp:BoundField DataField="DOS" HeaderText="DOS" />
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
