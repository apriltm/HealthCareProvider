﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Specialist.aspx.cs" Inherits="HCProviderLogin.Specialist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/pikaday.css" rel="stylesheet" />
    <link href="css/site.css" rel="stylesheet" />
    <link href="css/theme.css" rel="stylesheet" />
    <script src="pikaday.js"></script>
 <link rel="stylesheet" type="text/css" href="ScheduleApptStyle.css">
    <script src="jquery-3.3.1.min.js"></script>
    <title>Welcome to the Health Care Provider Website</title>
    <script>
         $(document).ready(function () {
           $("#location").click(function () {
              $("#panel").slideDown("slow");
              });
           });
      </script> 

    <style type="text/css">
        .auto-style2 {
            width: 307px;
        }
    </style>

</head>

<body>
    <form id="form1" runat="server">
        <div><div class="header">Welcome, !</div>
            <div class="container"><h1>SCHEDULE SPECIALIST APPOINTMENT</h1><br /><br />
                <div id="panel">Houston</div>
            </div>
          
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label1" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DDloc" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label2" runat="server" Text="Main reason for visit"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DDrea" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                                                <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label5" runat="server" Text="Specialist"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DDD" runat="server" DataSourceID="SqlDataSource1" DataTextField="DoctorType" DataValueField="DoctorTypeID">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthCareConnectionString %>" SelectCommand="SELECT * FROM [DoctorType] WHERE ([DoctorTypeID] &lt;&gt; @DoctorTypeID)">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="1" Name="DoctorTypeID" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label3" runat="server" Text="Date"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                                                                    
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label4" runat="server" Text="Time"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DDtime" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr><td class="auto-style2">
                                    <asp:Button ID="Button1" runat="server" Text="Request" OnClick="Button1_Click3" />
                                    <asp:Button ID="Button2" runat="server" Text="Back" PostBackUrl="~/PatientMenu.aspx" OnClick="Button2_Click" />
                            <br />
                                    <asp:Label ID="LaReq" runat="server" Text="Appointment Requested"></asp:Label>
                                    <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="Appointment time is not available "></asp:Label>
                            </td></tr>
                    </table>
          
          
        </div>
    </form>
</body>
</html>
