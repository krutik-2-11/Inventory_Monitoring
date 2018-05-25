<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employee.aspx.cs" Inherits="Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Stylesheet/my.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table cellpadding="5" class="tablegrid" cellspacing="0" width="100%">
            <tr>
                <th>Employee
                </th>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblName" CssClass="label" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtName" CssClass="textfield" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="This field required...." ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblAddress" CssClass="label" runat="server" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAddress" CssClass="textfield" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="This field required.." ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMobile" CssClass="label" runat="server" Text="Mobile"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMobile" CssClass="textfield" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="txtMobile" ErrorMessage="This Field Required..." ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revMobile" runat="server" ControlToValidate="txtMobile" ErrorMessage="Phone Number Not Valid.." ForeColor="Red" ValidationExpression="(D-)?\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblEmail" CssClass="label" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" CssClass="textfield" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="This field required..." ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Not Valid...." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblGender" CssClass="label" runat="server" Text="Gender"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtGender" CssClass="textfield" runat="server" Style="margin-bottom: 0px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="txtGender" ErrorMessage="This Field Required..." ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblSalary" CssClass="label" runat="server" Text="Salary"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtSalary" CssClass="textfield" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSalary" runat="server" ControlToValidate="txtSalary" ErrorMessage="This Field Required..." ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblUserId" CssClass="label" runat="server" Text="UserID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUserID" CssClass="textfield" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUserID" runat="server" ControlToValidate="txtUserID" ErrorMessage="This Field Required..." ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPassword" CssClass="label" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" CssClass="textfield" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="This Field Required...." ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnSubmit" CssClass="smartbutton" runat="server" Text="Submit" OnClick="btnSubmit_Click" ValidationGroup="a" />
                    <asp:Button ID="btnLoginPage" ForeColor="Red" runat="server" Text="Go TO Login Page" OnClick="btnLoginPage_Click" />
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
