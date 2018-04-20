<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DoctorMenu.aspx.cs" Inherits="HCProviderLogin.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="DoctorMenuStyle.css">
    <title>Welcome to the Health Care Provider Website</title>
</head>
<body>
    <form id="form1" runat="server">
        <div><div class="header">Welcome, !
            <div class="container" style="margin-top: 163px;"><h1>MAIN MENU</h1><br /><br />
                <asp:ImageButton runat="server" ID="ImageButton1" ImageUrl="https://cdn1.iconfinder.com/data/icons/social-messaging-productivity-vol-6/512/278-Appointment_calendar_time_clock_month_planner_reminder_schedule-64.png" PostBackUrl="~/Calendar.aspx" title="View Schedule" align="left" style="margin-left: 200px; margin-top: -300px; padding-left: 25px;" />
                
                <asp:ImageButton runat="server" ID="ImageButton2" ImageUrl="https://cdn1.iconfinder.com/data/icons/social-messaging-productivity-vol-6/512/258-Document_file_paper_text-64.png" PostBackUrl="~/HealthRecord.aspx" title="View Patients' Health Records" align="right" style="margin-top: -300px; margin-right: 160px; padding-right: 25px;" />
                    
                 <asp:ImageButton runat="server" ID="ImageButton3" ImageUrl="https://cdn0.iconfinder.com/data/icons/typicons-2/24/th-list-64.png" PostBackUrl="~/Prescription.aspx" title="View Patients' Prescriptions" align="left" style="margin-top: -200px; margin-left: 200px; padding-left: 25px;" /><br />
            </div></div>
          
        </div>
    </form>
    <script>
        function newLoad() {
            window.location.assign("/Calendar.aspx")
        }
    </script>
</body>
</html>
