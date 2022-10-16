<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginpage.aspx.cs" Inherits="BusReservationSystem.Loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<link href="css/login.css" rel="stylesheet" type="text/css" />
    <title>Login Page</title>
</head>
<body>
    <div class="container">
	<div class="screen">
		<div class="screen__content">
			<form class="login" id="form1" runat="server">
				<div class="login__field">
					<i class="login__icon fas fa-user"></i>
					<asp:TextBox class="login__input" ID="usertxt" runat="server" placeholder="User name / Email"></asp:TextBox>
				  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usertxt" ErrorMessage="User Name Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
      
				</div>
				<div class="login__field">
					<i class="login__icon fas fa-lock"></i>
					 <asp:TextBox class="login__input" ID="passtxt" runat="server" type="password" placeholder="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passtxt" ErrorMessage="Password Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
				</div>
					<asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" class="button login__submit" />
					<i class="button__icon fas fa-chevron-right"></i>
				</button>	
				<asp:Button ID="HyperLink1" runat="server" NavigateUrl="~/RegisterPage.aspx" class="button login__submit" Text="Not Registered?" CausesValidation="False" OnClick="HyperLink1_Click" />
					<i class="button__icon fas fa-chevron-right"></i>
				</button>
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
