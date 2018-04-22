<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientPrescription.aspx.cs" Inherits="HCProviderLogin.PatientPrescription" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="MenuStyle.css">
    <title>Welcome to the Health Care Provider Website</title>
     <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div><div class="header">Welcome, !</div>
            <div class="container"><h1>MAIN MENU</h1><br /><br />
                <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Appointment #"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAppt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Patient #"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPatient" runat="server"></asp:TextBox>
                </td>
            </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Labellabel" runat="server" Text="Refills"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtRefills" runat="server"></asp:TextBox>
                        </td>
                    </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Prescription #"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPrescription" runat="server"></asp:TextBox>
                </td>
            </tr>
                    <tr>
                        <td>
                    <asp:Label ID="Label4" runat="server" Text="Medication #"></asp:Label>
                </td>
                        <td>
                            <asp:DropDownList ID="DropDown" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
        </table>
        <asp:Button ID="submitButton" runat="server" OnClick="goTo" Text="Submit" />
        <asp:Button ID="backButton" runat="server" OnClick="goBack" Text="Back" /> 
        <p>
            <asp:Label ID="Label6" runat="server" ForeColor="#009933" Text="Save success"></asp:Label>
        </p>
        </div></div>
    </form>
</body>
</html>
