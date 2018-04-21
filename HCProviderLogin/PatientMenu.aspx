<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PatientMenu.aspx.cs" Inherits="HCProviderLogin.PatientMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="PatientMenuStyle.css">
    <title>Welcome to the Health Care Provider Website</title>
</head>
<body>
    <form id="form1" runat="server">
        <div><div class="header">Welcome, !
            <div class="container" style="margin-top: 113px;"><h1>MAIN MENU</h1><br /><br />
                <asp:ImageButton runat="server" ID="ImageButton1" ImageUrl="https://cdn1.iconfinder.com/data/icons/social-messaging-productivity-vol-6/512/280-Appointment_calendar_date_month_planner_reminder_schedule_add_plus-64.png" PostBackUrl="~/ScheduleAppt.aspx" title="Schedule an Appointment" align="left" style="margin-left: 200px; margin-top: -300px; padding-left: 25px;" />
                
                <asp:ImageButton runat="server" ID="ImageButton2" ImageUrl="https://cdn0.iconfinder.com/data/icons/typicons-2/24/th-list-64.png" PostBackUrl="~/HealthRecord.aspx" title="View Prescriptions" align="right" style="margin-top: -300px; margin-right: 160px; padding-right: 25px;" />

                <asp:ImageButton runat="server" ID="ImageButton3" ImageUrl="https://cdn1.iconfinder.com/data/icons/social-messaging-productivity-vol-6/512/278-Appointment_calendar_time_clock_month_planner_reminder_schedule-64.png" PostBackUrl="~/Prescription.aspx" title="View Appointment Status/Request Appointment Change" align="left" style="margin-top: -200px; margin-left: 200px; padding-left: 25px;" /><br />

                <asp:ImageButton runat="server" ID="ImageButton4" ImageUrl="https://cdn1.iconfinder.com/data/icons/social-messaging-productivity-vol-6/512/258-Document_file_paper_text-64.png" PostBackUrl="~/Prescription.aspx" title="View Health Records" align="left" style="margin-top: -340px; margin-left: 330px; padding-left: 25px;" />
            </div></div>
          
        </div>
    </form>
</body>
</html>
