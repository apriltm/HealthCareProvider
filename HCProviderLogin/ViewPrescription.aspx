<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewPrescription.aspx.cs" Inherits="HCProviderLogin.ViewPrescription" %>

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
            width: 259px;
        }
    </style>
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
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text="Chose a prescription to refill"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label2" runat="server">Prescription ID</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" Width="197px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Order" />
                            <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Refill Ordered" ForeColor="Green"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="Invalid Prescription" ForeColor="Red"></asp:Label>
                </div></div>
    </form>
</body>
</html>
