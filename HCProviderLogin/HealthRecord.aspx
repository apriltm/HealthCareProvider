<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HealthRecord.aspx.cs" Inherits="HCProviderLogin.HealthRecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="MenuStyle.css">
    <title>Welcome to the Health Care Provider Website</title>
</head>
<body>
    <form id="form1" runat="server">
        <div><div class="header">Welcome!</div>
            <div class="container"><h1>MAIN MENU</h1><br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ApptID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="ApptID" HeaderText="ApptID" ReadOnly="True" SortExpression="ApptID" />
                        <asp:BoundField DataField="Date" DataFormatString="{0:dd MMMM yyyy}" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="StatusID" HeaderText="StatusID" SortExpression="StatusID" Visible="False" />
                        <asp:BoundField DataField="DoctorID" HeaderText="DoctorID" SortExpression="DoctorID" Visible="False" />
                        <asp:BoundField DataField="PatientID" HeaderText="PatientID" SortExpression="PatientID" />
                        <asp:BoundField DataField="OfficeName" HeaderText="OfficeName" SortExpression="OfficeName" Visible="False" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="TimeSlot" HeaderText="TimeSlot" SortExpression="TimeSlot" />
                        <asp:BoundField DataField="VisitReasonName" HeaderText="VisitReasonName" SortExpression="VisitReasonName" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthCareConnectionString %>" SelectCommand="SELECT Appointments.ApptID, Appointments.Date, Appointments.StatusID, Appointments.DoctorID, Appointments.PatientID, Offices.OfficeName, StatusType.Status, TimeSlot.TimeSlot, VisitReason.VisitReasonName FROM Appointments INNER JOIN Offices ON Appointments.OfficeID = Offices.OfficeID INNER JOIN StatusType ON Appointments.StatusID = StatusType.StatusID INNER JOIN TimeSlot ON Appointments.TimeSlotID = TimeSlot.TimeSlotID INNER JOIN VisitReason ON Appointments.VisitReasonID = VisitReason.VisitReasonID WHERE ((Appointments.StatusID = @StatusID)) AND (Appointments.DoctorID = @DoctorID)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="5" Name="StatusID" />
                        <asp:SessionParameter DefaultValue="" Name="DoctorID" SessionField="DoctorID" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
            Patient #
            <asp:TextBox ID="paNum" runat="server" Width="163px"></asp:TextBox>
            <br />
                Appointment # <asp:TextBox ID="reNum" runat="server"></asp:TextBox>
            <br />
            Bloodtype
            <asp:DropDownList ID="bloodT" runat="server" Width="160px">
            </asp:DropDownList>
            <br />
            Age
            <asp:TextBox ID="ageNum" runat="server"></asp:TextBox>
            <br />
            Weight
            <asp:TextBox ID="weNum" runat="server"></asp:TextBox>&nbsp;lbs
            <br />
            Height
            <asp:TextBox ID="heNum1" runat="server">
            </asp:TextBox>
&nbsp;feet
            <asp:TextBox ID="heNum2" runat="server">
            </asp:TextBox>
&nbsp;inches<br />
            Bloodtest #
            <asp:DropDownList ID="bloodTest" runat="server">
            </asp:DropDownList>
            <br />
            Diagnosis #
            <asp:DropDownList ID="Diag" runat="server">
            </asp:DropDownList><br />

                <br />
                <asp:Button ID="sss" runat="server" OnClick="sub" Text="Submit" />
                <asp:Button ID="Button1" PostBackUrl="~/DoctorMenu.aspx" runat="server" Text="Back" />
        </div></div>
    </form>
</body>
</html>
