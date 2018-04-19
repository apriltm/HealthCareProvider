<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScheduleAppt.aspx.cs" Inherits="HCProviderLogin.ScheduleAppt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
</head>

<body>
    <form id="form1" runat="server">
        <div><div class="header">Welcome, !</div>
            <div class="container"><h1>SCHEDULE APPOINTMENT</h1><br /><br />
                <div id="location">Please select the following locations</div>
                <div id="panel">Houston</div>
            </div>
          
        </div>
    </form>
</body>
</html>
