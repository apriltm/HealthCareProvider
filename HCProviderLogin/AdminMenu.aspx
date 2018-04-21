<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminMenu.aspx.cs" Inherits="HCProviderLogin.AdminMenu" %>

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
                  <asp:ImageButton runat="server" ID="ImageButton1" ImageUrl="https://cdn1.iconfinder.com/data/icons/social-messaging-productivity-vol-6/512/278-Appointment_calendar_time_clock_month_planner_reminder_schedule-64.png" PostBackUrl="~/Calendar.aspx" title="View/Approve/Cancel Appointments" align="center" style="margin-left: 550px; margin-top: -50px; padding-left: 25px; position: absolute;" /><br /><br />
                <asp:Button ID="btnInfo" runat="server" OnClick="btnInfo_Click" Text="Input info" style="text-align: center; position: absolute;"/>               
            </div></div>
          
        </div>
    </form>
</body>
</html>
