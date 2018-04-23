<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prescriptions.aspx.cs" Inherits="HCProviderLogin.Prescriptions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="MenuStyle.css">
    <title>Welcome to the Health Care Provider Website</title>
</head>
<body>
    <form id="form1" runat="server">
        <div><div class="header">Welcome!</div>
            <div class="container"><h1>INPUT</h1><br /><br />
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" CssClass="labelClass" Text="Patient" align="center" style="margin-left: 550px; margin-top: -50px; padding-left: 25px; position: absolute;" /></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnNewP" runat="server" Text="Order Prescription" OnClick="goTo" align="center" style="margin-left: 650px; margin-top: -50px; padding-left: 25px; position: absolute;" />
                </td>
            </tr>
        </table></div></div>
    </form>
</body>
</html>
