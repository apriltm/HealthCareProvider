<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HealthRecord.aspx.cs" Inherits="HCProviderLogin.HealthRecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="MenuStyle.css">
    <title>Welcome to the Health Care Provider Website</title>
</head>
<body>
    <form id="form1" runat="server">
        <div><div class="header">Welcome, !</div>
            <div class="container"><h1>MAIN MENU</h1><br /><br />
            Patient #
            <asp:TextBox ID="paNum" runat="server" Width="163px"></asp:TextBox>
            <br />
            Record # <asp:TextBox ID="reNum" runat="server"></asp:TextBox>
            <br />
            Bloodtype
            <asp:DropDownList ID="bloodT" runat="server" Width="160px">
            </asp:DropDownList>
            <br />
            Age
            <asp:TextBox ID="ageNum" runat="server"></asp:TextBox>
            <br />
            Weight
            <asp:TextBox ID="weNum" runat="server"></asp:TextBox>&nbsp;lbs
            <br />
            Height
            <asp:TextBox ID="heNum1" runat="server">
            </asp:TextBox>
&nbsp;feet
            <asp:TextBox ID="heNum2" runat="server">
            </asp:TextBox>
&nbsp;inches<br />
            Bloodtest #
            <asp:DropDownList ID="bloodTest" runat="server">
            </asp:DropDownList>
            <br />
            Diagnosis #
            <asp:DropDownList ID="Diag" runat="server">
            </asp:DropDownList><br />
                Prescription #
            <asp:TextBox ID="presNum" runat="server">
            </asp:TextBox><br />
                Refills
                <asp:TextBox ID="numRefills" runat="server"></asp:TextBox>

                <br />
                <asp:Button ID="sss" runat="server" OnClick="sub" Text="submit" />
        </div></div>
    </form>
</body>
</html>
