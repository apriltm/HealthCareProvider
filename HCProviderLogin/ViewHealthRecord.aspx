<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewHealthRecord.aspx.cs" Inherits="HCProviderLogin.ViewHealthRecord" %>

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

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="PatientID" HeaderText="PatientID" SortExpression="PatientID" />
                        <asp:BoundField DataField="BloodTypeID" HeaderText="BloodTypeID" SortExpression="BloodTypeID" />
                        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                        <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                        <asp:BoundField DataField="Height" HeaderText="Height" SortExpression="Height" />
                        <asp:BoundField DataField="BloodTestID" HeaderText="BloodTestID" SortExpression="BloodTestID" />
                        <asp:BoundField DataField="DiagnosisID" HeaderText="DiagnosisID" SortExpression="DiagnosisID" />
                        <asp:BoundField DataField="PrescriptionID" HeaderText="PrescriptionID" SortExpression="PrescriptionID" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" DataFormatString="{0:dd MMMM yyyy}" />
                        <asp:BoundField DataField="TimeSlot" HeaderText="TimeSlot" SortExpression="TimeSlot" />
                        <asp:BoundField DataField="OfficeName" HeaderText="OfficeName" SortExpression="OfficeName" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthCareConnectionString %>" SelectCommand="SELECT HealthRecord.PatientID, HealthRecord.BloodTypeID, HealthRecord.Age, HealthRecord.Weight, HealthRecord.Height, HealthRecord.BloodTestID, HealthRecord.DiagnosisID, HealthRecord.PrescriptionID, Appointments.Date, TimeSlot.TimeSlot, Offices.OfficeName FROM HealthRecord INNER JOIN Appointments ON HealthRecord.RecordID = Appointments.ApptID INNER JOIN TimeSlot ON Appointments.TimeSlotID = TimeSlot.TimeSlotID INNER JOIN Offices ON Appointments.OfficeID = Offices.OfficeID WHERE (HealthRecord.PatientID = @PatientID)">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="" Name="PatientID" SessionField="PatientID" />
                    </SelectParameters>
                </asp:SqlDataSource>

                <asp:Button ID="Button1" runat="server" Text="Back" PostBackUrl="~/PatientMenu.aspx"/>

                </div></div> 
    </form>
</body>
</html>
