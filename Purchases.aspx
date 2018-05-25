<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Purchases.aspx.cs" Inherits="_Default" %>

<%@ Register src="MainMenu.ascx" tagname="MainMenu" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Purchases</title>
    <link href="Stylesheet/my.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:MainMenu ID="MainMenu1" runat="server" />
    
    </div>
    <table  cellpadding="1px" cellspacing="2px" style="width:100%;">
        <tr>
            <th>Purchases</th>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSupplierID" runat="server" Text="SupplierID"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlSupplierID" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvSupplierID" runat="server" 
                    ControlToValidate="ddlSupplierID" ErrorMessage="Supplier ID Required....." 
                    ForeColor="Red" ValidationGroup="c"></asp:RequiredFieldValidator>
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
                    ControlToValidate="ddlProductID" ErrorMessage="Product ID Required..." 
                    ForeColor="Red" ValidationGroup="c"></asp:RequiredFieldValidator>
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
                    ForeColor="Red" ValidationGroup="c"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPurchaseCost" runat="server" Text="PurchaseCost"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPurchaseCost" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPurchaseCost" runat="server" 
                    ControlToValidate="txtPurchaseCost" ErrorMessage="please enter cost.." 
                    ForeColor="Red" ValidationGroup="c"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="lblDOP" runat="server" Text="DOP"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="txtDOP" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDOP" runat="server" 
                    ControlToValidate="txtDOP" ErrorMessage="Date of Purchase required..." 
                    ForeColor="Red" ValidationGroup="c"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
           
            <td colspan = 2 align = "center">
                <asp:Button ID="btnPurchases" runat="server" Text="Submit" 
                    ValidationGroup="c" onclick="btnPurchases_Click" />
                <asp:Label ID="lbl" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
