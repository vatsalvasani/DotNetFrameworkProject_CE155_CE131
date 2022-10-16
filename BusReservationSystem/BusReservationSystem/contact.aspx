<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="BusReservationSystem.contact1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <header class="header">

    <a href="#" class="logo"> </i> PurpleBus.Com </a>

     <nav class="navbar">
        <a href="home.aspx">Home</a>
        <a href="viewstatus.aspx">Check Status</a>
        <a href="aboutus.aspx">About Us</a>
        <a href="contact.aspx">Contact Us</a>
        
    </nav>

</header>
    <br><br><br><br>
    <form id="form1" runat="server">
        <h1>Give Us Review</h1>
        <div class="elem-group">
            <asp:Label ID="Label1" runat="server" Text="Name : " CssClass="label"></asp:Label>
            <asp:TextBox ID="name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Name Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

        <div class="elem-group">
        <p>
            <asp:Label ID="Label2" runat="server" Text="Email : " CssClass="label"></asp:Label>
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Email Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="email" ErrorMessage="Enter Valid Email Address" ForeColor="Red" ValidationExpression="[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"></asp:RegularExpressionValidator>
        </p>
            </div>

            <div class="elem-group">
        <p>
            <asp:Label ID="Label3" runat="server" Text="Contact : " CssClass="label"></asp:Label>
            <asp:TextBox ID="contact" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="contact" ErrorMessage="Contact No. Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="contact" ErrorMessage="Enter Valid Contact No." ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
        </p>
                </div>

                <div class="elem-group">
        <p>
            <asp:Label ID="Label4" runat="server" Text="Feedback : " CssClass="label"></asp:Label>
            <asp:TextBox ID="feedback" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="feedback" ErrorMessage="Please Enter Feedback" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
                    </div>

        <div class="elem-group">
        <p>
            <asp:Label ID="Label5" runat="server" ForeColor="Red" CssClass="label"></asp:Label>
        </p>
            </div>

        <div class="elem-group">
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" CssClass="label"/>
        </p>
            </div>
    </form>


</body>
</html>
