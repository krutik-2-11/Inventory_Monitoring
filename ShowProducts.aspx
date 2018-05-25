<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowProducts.aspx.cs" Inherits="ShowProducts" %>

<%@ Register Src="MainMenu.ascx" TagName="MainMenu" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show Products</title>
    <link href="Stylesheet/my.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:MainMenu ID="MainMenu1" runat="server" />
            <table border="2" cellpadding="5" class="tablegrid" cellspacing="0" width="100%">
                <tr>
                    <th>Show Products
                    </th>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblProductName" Text="ProductName" runat="server"></asp:Label>
                        <asp:TextBox ID="txtProductName" CssClass="textfield" runat="server"></asp:TextBox>
                        <asp:Button ID="btnSearch" Text="Search" CssClass="smartbutton" runat="server" OnClick="btnSearch_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                        <asp:GridView ID="grdProducts" AutoGenerateColumns="false" runat="server" Width="100%" OnRowCommand="grdProducts_RowCommand" OnRowDeleting="grdProducts_RowDeleting">

                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <a href='Products.aspx?id=<%#Eval("id") %>'>Edit</a>
                                        <asp:LinkButton ID="lnkDelete" runat="server" CommandName="delete" Text="Delete" CommandArgument='<%# Eval("id") %>'></asp:LinkButton>
                                    </ItemTemplate>

                                </asp:TemplateField>
                                <asp:BoundField DataField="Id" HeaderText="Id" />
                                <asp:BoundField DataField="CompanyName" HeaderText="Company Name" />
                                <asp:BoundField DataField="ProductName" HeaderText="ProductName" />
                                <asp:BoundField DataField="Model" HeaderText="Model" />
                                <asp:BoundField DataField="Cost" HeaderText="Cost" />
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
