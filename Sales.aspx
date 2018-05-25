<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sales.aspx.cs" Inherits="_Default" %>


<%@ Register src="MainMenu.ascx" tagname="MainMenu" tagprefix="uc1" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sales</title>
    <link href="Stylesheet/my.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
  
        <uc1:MainMenu ID="MainMenu1" runat="server" />
  
    </div>
    <table style="width:100%; height: 132px;"  cellpadding="1" 
        cellspacing="2">

        <tr>
            <th>Sales</th>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblCustomerName" runat="server" Text="CustomerName"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCustName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCustomerName" runat="server" 
                    ControlToValidate="txtCustName" ErrorMessage="Customer Name Required...." 
                    ForeColor="Red" ValidationGroup="sales"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblProductID" runat="server" Text="ProductID"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlProductID" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvProductID" runat="server" 
                    ControlToValidate="ddlProductID" ErrorMessage="ProductID Required..." 
                    ForeColor="Red" ValidationGroup="sales"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblQuantity" runat="server" Text="Quantity"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvQuantity" runat="server" 
                    ControlToValidate="txtQuantity" ErrorMessage="Quantity Required.." 
                    ForeColor="Red" ValidationGroup="sales"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblCost" runat="server" Text="Cost"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCost" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCost" runat="server" 
                    ControlToValidate="txtCost" ErrorMessage="cost required..." ForeColor="Red" 
                    ValidationGroup="sales"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblDOS" runat="server" Text="DateOfSale"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDOS" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDOS" runat="server" 
                    ControlToValidate="txtDOS" ErrorMessage="Date of sale required.." 
                    ForeColor="Red" ValidationGroup="sales"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td  colspan = 2 align = "center">
                <asp:Button ID="btnSales" runat="server" Text="Submit" 
                    ValidationGroup="sales" onclick="btnSales_Click" />
                <asp:Label ID="lbl" runat="server" ForeColor="Green"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
    </body>
</html>
