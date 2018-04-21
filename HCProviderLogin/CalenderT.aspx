<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalenderT.aspx.cs" Inherits="HCProviderLogin.Calender_testing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/pikaday.css" rel="stylesheet" />
    <link href="css/site.css" rel="stylesheet" />
    <link href="css/theme.css" rel="stylesheet" />
    <script src="pikaday.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                                            <script type="text/javascript">
                var picker = new Pikaday(
                    {
                        field: document.getElementById('TextBox1'),
                        firstDay: 1,
                        minDate: new Date('2018-01-01'),
                        maxDate: new Date('2020-12-31'),
                        yearRange: [2000, 2020],
                        numberOfMonths: 1
                    });
            </script>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
