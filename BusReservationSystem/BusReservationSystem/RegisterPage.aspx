<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="BusReservationSystem.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/register.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
     <div class="container">
	<div class="screen">
		<div class="screen__content">
			<form id="form1" runat="server">
				<div class="login__field">
					<i class="login__icon fas fa-user"></i>
                    <br>
                    <br>
                    <asp:TextBox class="login__input" ID="nametxt" runat="server" placeholder="Enter Your Name"></asp:TextBox>
				  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nametxt" ErrorMessage="User Name Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
      
				</div>


				<div class="login__field">
					<i class="login__icon fas fa-lock"></i>

                    <asp:TextBox class="login__input" ID="emailtxt" runat="server" placeholder="Enter Your Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="emailtxt" ErrorMessage="Email Id Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="emailtxt" ErrorMessage="Enter Valid Email Address" ForeColor="Red" ValidationExpression="[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"></asp:RegularExpressionValidator>
				
                </div>

                <div class="login__field">
					<i class="login__icon fas fa-lock"></i>

                    <asp:TextBox class="login__input"  ID="mobtxt" runat="server" placeholder="Enter Your Mobile No."></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="mobtxt" ErrorMessage="Mobile No. is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="mobtxt" ErrorMessage="Enter Valid mobile No." ForeColor="Red" ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$"></asp:RegularExpressionValidator>
                </div>

                <div class="login__field">
					<i class="login__icon fas fa-lock"></i>
                    <asp:TextBox class="login__input" ID="addtext" runat="server" placeholder="Enter Your Address"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="addtext" ErrorMessage="Address Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div class="login__field">
					<i class="login__icon fas fa-lock"></i>
                     <asp:TextBox  class="login__input" ID="passtxt" runat="server" type="password" placeholder="Enter Your Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="passtxt" ErrorMessage="Password Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="passtxt" ErrorMessage="It Should Be Alphanumeric String Length More Then 6 And At Least One Special Character" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,15}$"></asp:RegularExpressionValidator>

                </div>
               
                <asp:Button class="button login__submit" ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
        &nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Loginpage.aspx">Already Registered?</asp:HyperLink>
        <br />
        <br />
				<asp:Label ID="err" runat="server" ForeColor="Red"></asp:Label>
			</form>

		</div>
		<div class="screen__background">
			<span class="screen__background__shape screen__background__shape4"></span>
			<span class="screen__background__shape screen__background__shape3"></span>		
			<span class="screen__background__shape screen__background__shape2"></span>
			<span class="screen__background__shape screen__background__shape1"></span>
		</div>		
	</div>
</div>
</body>
</html>
