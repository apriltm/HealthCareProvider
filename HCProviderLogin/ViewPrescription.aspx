<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewPrescription.aspx.cs" Inherits="HCProviderLogin.ViewPrescription" %>

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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="ApptID" HeaderText="ApptID" SortExpression="ApptID" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="MedicationName" HeaderText="MedicationName" SortExpression="MedicationName" />
                        <asp:BoundField DataField="Refills" HeaderText="Refills" SortExpression="Refills" />
                        <asp:BoundField DataField="PrescriptionID" HeaderText="PrescriptionID" SortExpression="PrescriptionID" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthCareConnectionString %>" SelectCommand="SELECT Appointments.ApptID, Appointments.Date, MedicationType.MedicationName, Prescriptions.Refills, Prescriptions.PrescriptionID FROM Appointments INNER JOIN Prescriptions ON Appointments.ApptID = Prescriptions.ApptID INNER JOIN MedicationType ON Prescriptions.MedicationID = MedicationType.MedicationID WHERE Appointments.PatientID = @PatientID">
                    <SelectParameters>
                        <asp:SessionParameter Name="PatientID" SessionField="PatientID" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                </div></div>
    </form>
</body>
</html>
