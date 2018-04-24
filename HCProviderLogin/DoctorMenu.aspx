<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DoctorMenu.aspx.cs" Inherits="HCProviderLogin.WebForm3" %>

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
                <asp:ImageButton runat="server" ID="ImageButton1" ImageUrl="https://cdn1.iconfinder.com/data/icons/social-messaging-productivity-vol-6/512/278-Appointment_calendar_time_clock_month_planner_reminder_schedule-64.png" OnClick="Button1_Click" title="View Appointments" style="margin-top: -50px; position: absolute;" />
                <br /><br />
                <asp:ImageButton runat="server" ID="ImageButton2" ImageUrl="https://cdn1.iconfinder.com/data/icons/social-messaging-productivity-vol-6/512/258-Document_file_paper_text-64.png" PostBackUrl="~/HealthRecord.aspx" title="View Patients' Health Records" style="position: absolute;" />
                    <br /><br /><br /><br />
                 <asp:ImageButton runat="server" ID="ImageButton3" ImageUrl="https://cdn0.iconfinder.com/data/icons/typicons-2/24/th-list-64.png" PostBackUrl="~/Prescriptions.aspx" title="View Patients' Prescriptions" style="position: absolute;" />
                
                                <br /><br /><br /><br /><asp:Button ID="Button2" runat="server" style="position: absolute;" Text="LogOut" PostBackUrl="~/Main.aspx"/>

            </div>
          
        </div>
    </form>
</body>
</html>
