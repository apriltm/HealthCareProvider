<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="HCProviderLogin.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" type="text/css" href="MenuStyle.css">
    <title>Welcome to the Health Care Provider Website</title>
</head>
<body>
    <form id="form1" runat="server">
        <div><div class="header">Welcome!</div>
            <div class="container">If you are new to our website, please enter your information below.<br /><br />First Name
                <asp:TextBox ID="TextBox1" runat="server" required=""></asp:TextBox>
                <br />
                Middle Initial (optional)
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                Last Name
                <asp:TextBox ID="TextBox3" runat="server" required=""></asp:TextBox>
                <br />
                Email
                <asp:TextBox ID="TextBox13" runat="server" required=""></asp:TextBox>
                <br />
                Username
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                <br />
                Password
                <asp:TextBox ID="TextBox15" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                Sex
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
                <br />
                Date of Birth
                <asp:TextBox ID="TextBox7" runat="server" TextMode="Date" required=""></asp:TextBox>
                <br />
                Street Number <asp:TextBox ID="TextBox4" runat="server" required="" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                <br />
                Street Name
                <asp:TextBox ID="TextBox8" runat="server" required=""></asp:TextBox>
                <br />City
                <asp:TextBox ID="TextBox5" runat="server" required=""></asp:TextBox>
                <br />
                State
                <asp:DropDownList ID="DropDownList1" runat="server" required="">
                </asp:DropDownList>
                <br />
                Zip Code
                <asp:TextBox ID="TextBox6" runat="server" required=""></asp:TextBox>
                <br />
                Home Number
                <asp:TextBox ID="TextBox9" runat="server" required=""></asp:TextBox>
                <br />
                Cell Number
                <asp:TextBox ID="TextBox10" runat="server" OnTextChanged="TextBox10_TextChanged"></asp:TextBox>
                <br />
                Emergency Number
                <asp:TextBox ID="TextBox11" runat="server" required=""></asp:TextBox>
                <br />
                Alternate
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                <br />
                Insurance Provider
                <asp:DropDownList ID="DropDownList3" runat="server" required="">
                </asp:DropDownList>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
                &nbsp;<asp:Button ID="Button2" runat="server" PostBackUrl="~/PatientLogin.aspx" Text="Back" />
                <br />
                <asp:Label ID="Label1" CssClass="labelClass" runat="server" Text="Registration successful!" Visible="False"></asp:Label>
                <br />
                <br />
                <br />
                <br />

                </div>
        </div>
    </form>
</body>
</html>
