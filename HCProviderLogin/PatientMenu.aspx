<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PatientMenu.aspx.cs" Inherits="HCProviderLogin.PatientMenu" %>

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
                <asp:ImageButton runat="server" ID="ImageButton1" ImageUrl="https://cdn1.iconfinder.com/data/icons/social-messaging-productivity-vol-6/512/280-Appointment_calendar_date_month_planner_reminder_schedule_add_plus-64.png" PostBackUrl="~/ScheduleAppt.aspx" title="Schedule an Appointment" align="center" style="margin-left: 550px; margin-top: -50px; padding-left: 25px; position: absolute;" />
                
                <asp:ImageButton runat="server" ID="ImageButton2" ImageUrl="https://cdn0.iconfinder.com/data/icons/typicons-2/24/th-list-64.png" PostBackUrl="~/ViewPrescription.aspx" title="View Prescriptions" align="center" style="margin-top: -50px; margin-left: 650px; padding-left: 25px; position: absolute;" />

                <asp:ImageButton runat="server" ID="ImageButton3" ImageUrl="https://cdn1.iconfinder.com/data/icons/social-messaging-productivity-vol-6/512/278-Appointment_calendar_time_clock_month_planner_reminder_schedule-64.png" PostBackUrl="~/ViewAppointment.aspx" title="View Appointment Status/Request Appointment Change" align="center" style="margin-top: -50px; margin-left: 750px; padding-left: 25px; position: absolute;" /><br />

                <asp:ImageButton runat="server" ID="ImageButton4" ImageUrl="https://cdn1.iconfinder.com/data/icons/social-messaging-productivity-vol-6/512/258-Document_file_paper_text-64.png" PostBackUrl="~/ViewHealthRecord.aspx" title="View Health Records" align="center" style="margin-top: -70px; margin-left: 850px; padding-left: 25px; position: absolute;" />
            </div>
          
        </div>
    </form>
</body>
</html>
