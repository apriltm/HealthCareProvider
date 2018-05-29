<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prescriptions.aspx.cs" Inherits="HCProviderLogin.Prescriptions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="MenuStyle.css" />
    <title>Welcome to the Health Care Provider Website</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 21px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div><div class="header">Welcome!</div>
            <div class="container">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="lblAp" runat="server" Text="Appointment ID"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label2" runat="server" Text="Refills"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblmed" runat="server" Text="Medication"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblPaID" runat="server" Text="Patient ID"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br /><br />
        <table class="auto-style1">
            <tr>
                <td>
                    </asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ApptID" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="ApptID" HeaderText="ApptID" ReadOnly="True" SortExpression="ApptID" />
                            <asp:BoundField DataField="Date" DataFormatString="{0:dd MMMM yyyy}" HeaderText="Date" SortExpression="Date" />
                            <asp:BoundField DataField="StatusID" HeaderText="StatusID" SortExpression="StatusID" />
                            <asp:BoundField DataField="DoctorID" HeaderText="DoctorID" SortExpression="DoctorID" />
                            <asp:BoundField DataField="PatientID" HeaderText="PatientID" SortExpression="PatientID" />
                            <asp:BoundField DataField="OfficeName" HeaderText="OfficeName" SortExpression="OfficeName" />
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
                </td>
            </tr>
        </table></div></div>
    </form>
</body>
</html>
