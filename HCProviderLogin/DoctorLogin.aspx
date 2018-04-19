<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DoctorLogin.aspx.cs" Inherits="HCProviderLogin.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="PatientLoginStyle.css">
<title>Welcome to the Health Care Provider Website</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">HEALTH CARE PROVIDER</div>
            </div>

<div class="movebox">
  <div class="imgcontainer">
    
  </div>

  <div class="container" >     
              
            <b>Username</b> <asp:TextBox ID="TextBox3" runat="server" Width="263px" required></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;<b>Password</b>
            <asp:TextBox ID="TextBox4" runat="server" Width="263px" required></asp:TextBox>
            <asp:Button ID="Button_1" runat="server" Text="Login" Width="665px" Height="35px" CssClass="ButtonSettings1" /><br /><label>
      <input type="checkbox" name="remember"> Remember me?
    </label><br /><br />
            <asp:Button ID="Button_2" runat="server" Text="Cancel" Width="132px" CssClass="cancelSettings1" PostBackUrl="~/WebForm1.aspx"/>
      <span class="psw">Forgot <a href="#">password?</a></span>
        </p>
  </div>
  
    </form>
</body>
</html>
