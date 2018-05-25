<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Stylesheet/my.css" rel="stylesheet" />
    <title>Home Page</title>
    <style type="text/css">
        .auto-style1 {
            width: 24%;
            height: 233px;
        }

        .auto-style2 {
            width: 25%;
        }

        .auto-style3 {
            width: 362px;
            height: 233px;
        }

        .auto-style4 {
            width: 158px;
            height: 233px;
        }

        .auto-style5 {
            width: 25%;
            height: 233px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>

    <table width ="100%">
        <tr>
            <td class="auto-style2" style="font-size: xx-large; color: #800000; background-color: #C0C0C0;" colspan="4"; align ="center">Inventory Management System</td>
        </tr>


        <tr>
            <td class="auto-style5" colspan ="1">
                <img src="Images/laptop.jpg" style="background-color: #339933" />
            </td>

            <td class="auto-style1" colspan ="1">
                <img src="Images/smartphone.jpg" />
            </td>
            <td class="auto-style3" colspan ="1">
                <img src="Images/television.jpg" />
            </td>

            <td class="auto-style4" colspan ="1">
                <img src="Images/powerbank.jpg" />
            </td>

        </tr>
        <tr>
            <td colspan ="1">
                <img src ="Images/oven.jpg" />
            </td>

            <td colspan ="1">
                <img src ="Images/refrigerator.jpg" />

            </td>
            <td colspan ="1">
                <img src ="Images/SmartWatch.jpg " />
            </td>

            <td colspan ="1">
                <img src ="Images/HardDrive.jpg " />

            </td>

        </tr>



        <tr>
            <td colspan ="2">
                <p>
                    Inventory management software is a software system for 
                    tracking inventory levels, orders, sales and deliveries.
                    It can also be used in the manufacturing industry to create a work order, 
                    bill of materials and other production-related documents.
                 </p>
            </td>

            <td colspan ="2">
                <a href = "Login.aspx">Click Here To Login/SignIn</a>


        </tr>




    </table>

</body>
</html>
