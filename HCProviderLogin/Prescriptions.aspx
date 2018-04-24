<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prescriptions.aspx.cs" Inherits="HCProviderLogin.Prescriptions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="MenuStyle.css" />
    <title>Welcome to the Health Care Provider Website</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 21px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div><div class="header">Welcome!</div>
            <div class="container">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="lblAp" runat="server" Text="Appointment ID"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label2" runat="server" Text="Refills"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblmed" runat="server" Text="Medication"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblPaID" runat="server" Text="Patient ID"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br /><br />
        <table class="auto-style1">
            <tr>
                <td>
                    </asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table></div></div>
    </form>
</body>
</html>
