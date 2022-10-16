<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="booking.aspx.cs" Inherits="BusReservationSystem.booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <title>Bus Booking</title>
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
        <h1>Book Bus</h1>
            <div class="elem-group">
            <asp:Label ID="name" runat="server" Text="Name : " CssClass="label"></asp:Label>
            <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" ErrorMessage="Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

        <div class="elem-group">
        <p>
            <asp:Label ID="phone" runat="server" Text="Phone_no :" CssClass="label"></asp:Label>
            <asp:TextBox ID="txt_phone" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_phone" ErrorMessage="Enter Phone No." ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_phone" ErrorMessage="Enter Valid Phone No." ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
        </p>
            </div>

         <div class="elem-group">
        <p>
            <asp:Button ID="book" runat="server" OnClick="book_ticket" Text="Book Ticket"  CssClass="label"/>
        </p>
             </div>

             <div class="elem-group">
        <p>
            <asp:Label ID="err" runat="server" ForeColor="Red" CssClass="label"></asp:Label>
        </p>
                 </div>

    </form>
</body>
</html>

