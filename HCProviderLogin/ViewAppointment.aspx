<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAppointment.aspx.cs" Inherits="HCProviderLogin.ViewAppointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link rel="stylesheet" type="text/css" href="MenuStyle.css">
    <title>Welcome to the Health Care Provider Website</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 247px;
        }
        .auto-style4 {
            width: 247px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div><div class="header">Welcome, !</div>
            <div class="container"><h1>MAIN MENU</h1><br /><br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" DataKeyNames="ApptID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                        <asp:BoundField DataField="OfficeName" HeaderText="OfficeName" SortExpression="OfficeName" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="TimeSlot" HeaderText="TimeSlot" SortExpression="TimeSlot" />
                        <asp:BoundField DataField="VisitReasonName" HeaderText="VisitReasonName" SortExpression="VisitReasonName" />
                        <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                        <asp:BoundField DataField="ApptID" HeaderText="ApptID" SortExpression="ApptID" ReadOnly="True" />
                    </Columns>
                </asp:GridView>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server">Chose an appointment to cancel</asp:Label>
                        </td>
                        <td class="auto-style2">
                            
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cancel" Width="60px" />
                            <asp:Button ID="Button2" runat="server" Text="Back" PostBackUrl="~/PatientMenu.aspx"/>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthCareConnectionString %>" SelectCommand="SELECT Appointments.Date, Doctors.LName, Offices.OfficeName, StatusType.Status, TimeSlot.TimeSlot, VisitReason.VisitReasonName, Doctors.FName, Appointments.ApptID FROM Appointments INNER JOIN Doctors ON Appointments.DoctorID = Doctors.DoctorID INNER JOIN Offices ON Appointments.OfficeID = Offices.OfficeID INNER JOIN StatusType ON Appointments.StatusID = StatusType.StatusID INNER JOIN TimeSlot ON Appointments.TimeSlotID = TimeSlot.TimeSlotID INNER JOIN VisitReason ON Appointments.VisitReasonID = VisitReason.VisitReasonID WHERE (Appointments.StatusID &lt;&gt; 7) AND (Appointments.PatientID = @PatientID)">
                    <SelectParameters>
                        <asp:SessionParameter Name="PatientID" SessionField="PatientID" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </div></div>
    </form>
</body>
</html>
