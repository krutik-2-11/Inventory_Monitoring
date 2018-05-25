<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login1.aspx.cs" Inherits="Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Stylesheet/my.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 1080px;" class="tablegrid ">
                <tr>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <table cellpadding="5" class="tablegrid" cellspacing="0">
                            <tr>
                                <th>Login</th>
                            </tr>
                            <tr>

                                <td>
                                    <asp:Label ID="lbluserID" CssClass="label" runat="server" Text="UserID"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtUserID" CssClass="textfield" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblPassword" CssClass="label" runat="server" Text="Password"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPassword" CssClass="textfield" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td colspan="2" align="center">
                                    <asp:Button ID="btnLogin" CssClass="smartbutton6" runat="server" Text="Login" />
                                </td>

                            </tr>
                        </table>

                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
