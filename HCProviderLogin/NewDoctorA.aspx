<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewDoctorA.aspx.cs" Inherits="HCProviderLogin.NewDoctorA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Fname"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="M Init"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtM" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Lname"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Lname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Phone Number"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtNum" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Specialist"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DD" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" />
        <p>
            <asp:Label ID="Label6" runat="server" ForeColor="#009933" Text="Save success"></asp:Label>
        </p>
    </form>
</body>
</html>
