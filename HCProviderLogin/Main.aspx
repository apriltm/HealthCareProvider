<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="HCProviderLogin.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="loginStyle.css">
    <title>Welcome to the Health Care Provider Website</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">HEALTH CARE PROVIDER</div>
            <div class="text">Please choose one of the following options below to login.</div>
            <div class="desc"><asp:LinkButton runat="server" id="SomeLinkButton" href="PatientLogin.aspx" CssClass="btn btn-primary btn-sm"><img src="https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-group-64.png" /></asp:LinkButton><br />
                Patient<br /></div>
            <div class="smalldesc"><small>If you are a patient seeking to schedule an appointment, access your health records as well as prescriptions, please sign in here.</small></div>
            <div class="desc2"><asp:LinkButton runat="server" id="LinkButton1" href="DoctorLogin.aspx" CssClass="btn btn-primary btn-sm"><img src="https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-group-64.png" /></asp:LinkButton><br />
                Doctor</div>
            <div class="smalldesc2"><small>If you are a doctor seeking to access your patient's health records, schedule as well as prescriptions, please sign in here.</small></div>
            <div class="desc3"><asp:LinkButton runat="server" id="LinkButton2" href="AdminLogin.aspx" CssClass="btn btn-primary btn-sm"><img src="https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-group-64.png" /></asp:LinkButton><br />
                Administrator</div>
            <div class="smalldesc3"><small>If you are an administrator seeking to access records of a patient's appointments, please sign in here.</small></div>
        </div>
    </form>
</body>
</html>
