<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPastMonth.aspx.cs" Inherits="HCProviderLogin.AdminPastMonth" %>

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
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                        <Columns>
                            <asp:BoundField DataField="ApptID" HeaderText="ApptID"  />
                            <asp:BoundField DataField="DoctorID" HeaderText="DoctorID"  />
                            <asp:BoundField DataField="LName" HeaderText="Doctor Name"  />
                            <asp:BoundField DataField="Date" HeaderText="Date"  />
                            <asp:BoundField DataField="VisitReasonName" HeaderText="Visit Reason"  />
                            <asp:BoundField DataField="Status" HeaderText="Status"  />
                            <asp:BoundField DataField="OfficeName" HeaderText="OfficeName"  />
                            <asp:BoundField DataField="TimeSlot" HeaderText="TimeSlot"  />
                            <asp:BoundField DataField="PatientID" HeaderText="PatientID"  />
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
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        </div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br /><br />
        <asp:Button ID="Button1" runat="server" Text="Back" OnClick="B1Click" />
    </form>
</body>
</html>

