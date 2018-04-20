<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminMenu.aspx.cs" Inherits="HCProviderLogin.AdminMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="AdminMenuStyle.css">
    <title>Welcome to the Health Care Provider Website</title>
</head>
<body>
    <form id="form1" runat="server">
                <div><div class="header">Welcome, !
            <div class="container" style="margin-top: 113px;"><h1>MAIN MENU</h1><br /><br />
                <asp:ImageButton runat="server" ID="ImageButton1" ImageUrl="https://cdn1.iconfinder.com/data/icons/social-messaging-productivity-vol-6/512/278-Appointment_calendar_time_clock_month_planner_reminder_schedule-64.png" PostBackUrl="~/Calendar.aspx" title="View/Approve/Cancel Appointments" align="left" style="margin-left: 200px; margin-top: -300px; padding-left: 25px;" />
                
            </div></div>
          
        </div>
    </form>
</body>
</html>
