<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminInput.aspx.cs" Inherits="HCProviderLogin.AdminInput" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Patient"></asp:Label>
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
                    <asp:Label ID="Label2" runat="server" Text="Doctor"></asp:Label>
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
        </table>
    </form>
</body>
</html>
