<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminMenu.aspx.cs" Inherits="HCProviderLogin.AdminMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="MenuStyle.css">
    <title>Welcome to the Health Care Provider Website</title>
</head>
<body>
    <form id="form1" runat="server">
                <div><div class="header">Welcome!</div>
            <div class="container"><h1>MAIN MENU</h1><br /><br />
                  <asp:ImageButton runat="server" ID="Button1" ImageUrl="https://cdn1.iconfinder.com/data/icons/social-messaging-productivity-vol-6/512/278-Appointment_calendar_time_clock_month_planner_reminder_schedule-64.png" OnClick="Button1_Click" title="View/Approve/Cancel Appointments" style="margin-top: -50px; position: absolute;" />
                
                <br /><br /><asp:Button ID="Button2" runat="server" Text="LogOut" style="position: absolute;" PostBackUrl="~/Main.aspx"/>
            </div></div>
          
        </div>
    </form>
</body>
</html>
