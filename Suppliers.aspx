<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Suppliers.aspx.cs" Inherits="_Default" %>

<%@ Register src="MainMenu.ascx" tagname="MainMenu" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Suppliers</title>
    <link href="Stylesheet/my.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 22px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <uc1:MainMenu ID="MainMenu1" runat="server" />
    <div>
    
    </div>
    <table cellpadding="1px" cellspacing="2px" class = "tablegrid" style="width:100%;">
        <tr>
            <th>Supplier
            </th>
        </tr>
        
        <tr>
            <td class="style1">
                <asp:Label ID="lblSuppliersName" CssClass = "label" runat="server" Text="SupplierName"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="txtSuppliersName" CssClass="textfield" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSuppliersName" runat="server" 
                    ControlToValidate="txtSuppliersName" ErrorMessage="Supplier's Name Required..." 
                    ForeColor="Red" ValidationGroup="S"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblAddress" CssClass = "label" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" 
                    ControlToValidate="txtAddress" ErrorMessage="Address Required...." 
                    ForeColor="Red" ValidationGroup="S"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPhone" CssClass = "label" runat="server" Text="Phone"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revPhone" runat="server" 
                    ControlToValidate="txtPhone" ErrorMessage="Phone Number Not valid" 
                    ForeColor="Red" ValidationExpression="(D-)?\d{10}" ValidationGroup="S"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMobile" CssClass = "label" runat="server" Text="Mobile"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revMobile" runat="server" 
                    ControlToValidate="txtMobile" ErrorMessage="Mobile Number Not Valid..." 
                    ForeColor="Red" ValidationExpression="(D-)?\d{10}" ValidationGroup="S"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblEmail" CssClass = "label" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Email invalid.." ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan = 2 align = "center">
                <asp:Button ID="btnSubmitSuppliers" CssClass="smartbutton" runat="server" Text="Submit" 
                    ValidationGroup="S" onclick="btnSubmitSuppliers_Click" />
                <asp:Label ID="lblSuppliers" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
