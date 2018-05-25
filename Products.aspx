<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="_Default" %>

<%@ Register Src="MainMenu.ascx" TagName="MainMenu" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products</title>
    <link href="Stylesheet/my.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:MainMenu ID="MainMenu1" runat="server" />
        <div>
            <table cellpadding="5px" cellspacing="0px" style="width: 100%;">
                <tr>
                    <th>Products
                    
                    </th>
                </tr>
                <tr>
                    <td class="style1">
                        <asp:Label ID="lblCompanyName" CssClass="label" runat="server" Text="CompanyName"></asp:Label>
                    </td>
                    <td class="style1">
                        <asp:TextBox ID="txtCompanyName" CssClass="textfield" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCompanyName" runat="server" ControlToValidate="txtCompanyName"
                            ErrorMessage="Company Name Required..." ForeColor="Red" ValidationGroup="submitProducts"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblProductName" CssClass="label" runat="server" Text="ProductName"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtProductName" CssClass="textfield" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvProduct" runat="server" ControlToValidate="txtProductName"
                            ErrorMessage="Product Name Required...." ForeColor="Red" ValidationGroup="submitProducts"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblModel" CssClass="label" runat="server" Text="Model"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtModel" CssClass="textfield" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvModel" runat="server" ControlToValidate="txtModel"
                            ErrorMessage="Model Name Required...." ForeColor="Red" ValidationGroup="submitProducts"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCost" CssClass="label" runat="server" Text="Cost"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCost" CssClass="textfield" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCost" ControlToValidate="txtCost" ErrorMessage="Enter Cost.." ForeColor="Red" runat="server" ValidationGroup="submitProducts"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvgCost" runat="server" ControlToValidate="txtCost" ErrorMessage="cost should not exceed 1000"
                            ForeColor="Red" MaximumValue="100000" MinimumValue="0" Type="Integer" ></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btnSubmitProducts" CssClass="smartbutton6" runat="server" Text="Submit"
                            ValidationGroup="submitProducts" OnClick="btnSubmitProducts_Click" />
                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
