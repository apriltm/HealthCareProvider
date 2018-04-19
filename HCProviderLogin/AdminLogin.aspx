<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="HCProviderLogin.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link rel="stylesheet" type="text/css" href="AdminLoginStyle.css">
    <!-- <script src="redirect.js" type="text/javascript" /> -->

    <title>Welcome to the Health Care Provider Website</title>
</head>
<body>
        <form id="form1" runat="server">
        <div>
            <div class="header">HEALTH CARE PROVIDER</div>
            </div>
    </form>

<div class="movebox">
<form action="action_page.php">
  <div class="imgcontainer">
    <!--<img src="https://www.w3schools.com/howto/img_avatar2.png" alt="Avatar" class="avatar"> -->
  </div>

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <button type="submit">Login</button>
    <label>
      <input type="checkbox" name="remember"> Remember me
    </label> <!-- if you want it checked, input checked="checked" within the input type of "remember" -->
  </div>

  <div class="container">
    <button type="button" class="cancelbtn" onclick="window.location.href='WebForm1.aspx'">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div></div>
  
</form>
</body>
</html>
