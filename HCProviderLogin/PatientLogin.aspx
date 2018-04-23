<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PatientLogin.aspx.cs" Inherits="HCProviderLogin.PatientLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="OpeningLoginStyle.css">
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
              
            <b>Username</b> <asp:TextBox ID="txtuserP" runat="server" Width="263px" required=""></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;<b>Password</b>
            <asp:TextBox ID="txtpassP" runat="server" Width="263px" required="" TextMode="Password"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Login" Width="665px" Height="35px" CssClass="ButtonSettings" OnClick="Button1_Click" /><br /><label>
      <input type="checkbox" name="remember"> Remember me?
    </label><br /><br />
            <asp:Button ID="Button2" runat="server" Text="Cancel" Width="132px" CssClass="cancelSettings" PostBackUrl="~/Main.aspx" formnovalidate=""/>
      <span class="psw">Forgot <a href="#">password?</a></span><asp:Label ID="lblerror" runat="server" Text="Incorrect Credentials"></asp:Label>
&nbsp;
  </div></div>
  
    </form>

</body>
</html>
