<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAppointmentD.aspx.cs" Inherits="HCProviderLogin.ViewAppointmentD" %>

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
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ApptID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="ApptID" HeaderText="ApptID" ReadOnly="True" SortExpression="ApptID" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="VisitReasonID" HeaderText="VisitReasonID" SortExpression="VisitReasonID" />
                <asp:BoundField DataField="StatusID" HeaderText="StatusID" SortExpression="StatusID" />
                <asp:BoundField DataField="DoctorID" HeaderText="DoctorID" SortExpression="DoctorID" Visible="False" />
                <asp:BoundField DataField="PatientID" HeaderText="PatientID" SortExpression="PatientID" />
                <asp:BoundField DataField="OfficeID" HeaderText="OfficeID" SortExpression="OfficeID" />
                <asp:BoundField DataField="TimeSlotID" HeaderText="TimeSlotID" SortExpression="TimeSlotID" />
                <asp:BoundField DataField="AdminID" HeaderText="AdminID" SortExpression="AdminID" Visible="False" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthCareConnectionString %>" SelectCommand="SELECT * FROM [Appointments] WHERE (([StatusID] = @StatusID) AND ([PatientID] = @PatientID))">
            <SelectParameters>
                <asp:Parameter DefaultValue="5" Name="StatusID" Type="Int32" />
                <asp:SessionParameter Name="PatientID" SessionField="DoctorID" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource></div></div>
    </form>
</body>
</html>
