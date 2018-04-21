<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScheduleAppt.aspx.cs" Inherits="HCProviderLogin.ScheduleAppt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/pikaday.css" rel="stylesheet" />
    <link href="css/site.css" rel="stylesheet" />
    <link href="css/theme.css" rel="stylesheet" />
    <script src="pikaday.js"></script>
 <link rel="stylesheet" type="text/css" href="ScheduleApptStyle.css">
    <script src="jquery-3.3.1.min.js"></script>
    <title>Welcome to the Health Care Provider Website</title>
     <script>
         $(document).ready(function () {
           $("#location").click(function () {
              $("#panel").slideDown("slow");
              });
           });
      </script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div><div class="header">Welcome, !</div>
            <div class="container"><h1>SCHEDULE APPOINTMENT</h1><br /><br />
                <div id="location"><br />
                </div>
                <div id="panel">Houston</div>
            </div>
          
        </div>
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DDloc" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Main reason for visit"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DDrea" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Date"></asp:Label>
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
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Time"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DDtime" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
    </form>
</body>
</html>
