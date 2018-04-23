<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminInput.aspx.cs" Inherits="HCProviderLogin.AdminInput" %>

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
                    <asp:Label ID="Label1" runat="server" CssClass="labelClass" Text="Patient"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnNewP" runat="server" Text="New" />
                </td>
                <td>
                    <asp:Button ID="btnUpdateP" runat="server" Text="Update" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" CssClass="labelClass" Text="Doctor"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnNewD" runat="server" OnClick="btnNewD_Click" Text="New" />
                </td>
                <td>
                    <asp:Button ID="btnUpdateD" runat="server" Text="Update" />
                </td>
            </tr>
        </table></div></div>
    </form>
</body>
</html>
