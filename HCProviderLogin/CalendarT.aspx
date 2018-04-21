<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalendarT.aspx.cs" Inherits="HCProviderLogin.Calender_testing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/pikaday.css" rel="stylesheet" />
    <link href="css/site.css" rel="stylesheet" />
    <link href="css/theme.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="ScheduleApptStyle.css">

    <script src="pikaday.js"></script>
    
</head>
<body>
    <form id="form1" runat="server">
        <div><div class="header">Welcome, !</div>
            <div class="container"><h1>WORK SCHEDULE</h1><br /><br />
                <div id="panel">Houston</div>
            </div>
          
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
