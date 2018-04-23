﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppointApproval.aspx.cs" Inherits="HCProviderLogin.AppointApproval" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to the Health Care Provider Website</title>
        <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</head>
<body style="height: 60px">
    <form id="form1" runat="server">
    <div>

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ApptID" DataSourceID="SqlDataSource1" OnRowUpdated="GridView1_RowUpdated">
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="ApptID" HeaderText="ApptID" ReadOnly="True" SortExpression="ApptID" />
                            <asp:BoundField DataField="Date" HeaderText="Date" ReadOnly="True" SortExpression="Date" />
                            <asp:TemplateField HeaderText="StatusID" SortExpression="StatusID">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource12" DataTextField="Status" DataValueField="StatusID" SelectedValue='<%# Bind("StatusID") %>'>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:HealthCareConnectionString %>" SelectCommand="SELECT * FROM [StatusType]"></asp:SqlDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="OfficeName" HeaderText="OfficeName" ReadOnly="True" SortExpression="OfficeName" />
                            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" Visible="False" />
                            <asp:BoundField DataField="TimeSlot" HeaderText="TimeSlot" ReadOnly="True" SortExpression="TimeSlot" />
                            <asp:BoundField DataField="VisitReasonName" HeaderText="VisitReasonName" ReadOnly="True" SortExpression="VisitReasonName" />
                            <asp:BoundField DataField="DoctorID" HeaderText="DoctorID" ReadOnly="True" SortExpression="DoctorID" />
                            <asp:BoundField DataField="PatientID" HeaderText="PatientID" ReadOnly="True" SortExpression="PatientID" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthCareConnectionString %>" SelectCommand="SELECT Appointments.ApptID, Appointments.Date, Appointments.StatusID, Offices.OfficeName, StatusType.Status, TimeSlot.TimeSlot, VisitReason.VisitReasonName, Appointments.DoctorID, Appointments.PatientID FROM Appointments INNER JOIN Offices ON Appointments.OfficeID = Offices.OfficeID INNER JOIN StatusType ON Appointments.StatusID = StatusType.StatusID INNER JOIN TimeSlot ON Appointments.TimeSlotID = TimeSlot.TimeSlotID INNER JOIN VisitReason ON Appointments.VisitReasonID = VisitReason.VisitReasonID" UpdateCommand="UPDATE [Appointments] SET [StatusID] = @StatusID WHERE [ApptID] = @ApptID">
                        <UpdateParameters>
                            <asp:Parameter Name="StatusID" />
                            <asp:Parameter Name="ApptID" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Back" />
        </form>
</body>
</html>
