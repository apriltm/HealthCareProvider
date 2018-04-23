<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAppointmentD.aspx.cs" Inherits="HCProviderLogin.ViewAppointmentD" %>

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
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ApptID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="ApptID" HeaderText="ApptID" ReadOnly="True" SortExpression="ApptID" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="StatusID" HeaderText="StatusID" SortExpression="StatusID" />
                <asp:BoundField DataField="DoctorID" HeaderText="DoctorID" SortExpression="DoctorID" />
                <asp:BoundField DataField="PatientID" HeaderText="PatientID" SortExpression="PatientID" />
                <asp:BoundField DataField="OfficeName" HeaderText="OfficeName" SortExpression="OfficeName" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="TimeSlot" HeaderText="TimeSlot" SortExpression="TimeSlot" />
                <asp:BoundField DataField="VisitReasonName" HeaderText="VisitReasonName" SortExpression="VisitReasonName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthCareConnectionString %>" SelectCommand="SELECT Appointments.ApptID, Appointments.Date, Appointments.StatusID, Appointments.DoctorID, Appointments.PatientID, Offices.OfficeName, StatusType.Status, TimeSlot.TimeSlot, VisitReason.VisitReasonName FROM Appointments INNER JOIN Offices ON Appointments.OfficeID = Offices.OfficeID INNER JOIN StatusType ON Appointments.StatusID = StatusType.StatusID INNER JOIN TimeSlot ON Appointments.TimeSlotID = TimeSlot.TimeSlotID INNER JOIN VisitReason ON Appointments.VisitReasonID = VisitReason.VisitReasonID WHERE ((Appointments.StatusID &lt;&gt; @StatusID) AND (Appointments.StatusID &lt;&gt; 3)) AND (Appointments.DoctorID = @DoctorID)">
            <SelectParameters>
                <asp:Parameter DefaultValue="7" Name="StatusID" Type="Int32" />
                <asp:SessionParameter Name="DoctorID" SessionField="DoctorID" DefaultValue="" />
            </SelectParameters>
        </asp:SqlDataSource>
                <asp:Button ID="Button1" runat="server" Text="Back" PostBackUrl="~/ViewAppointment.aspx"/>
                    </div></div>
    </form>
</body>
</html>
