<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="BusReservationSystem.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bus Reservation</title>
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="css/aboutus.css">

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

        <form runat="server"><asp:Button ID="Button2" runat="server" OnClick="logout_l" Text="Log Out" class="btn"/></form>

</header>

<section class="home" id="home" >

    <div class="content">
        <h3>About<span>US</span></h3>
        <p style = "color:black">Hey !! Thanks For Connecting With Us We Purplebus.com Is India's Highest Used App For Bus Reservation In 2021
            And We Strongly Belive in Trust And That's What Our Success Mantra Is. Give Us A Feedback We Would Love To Hear.</p>
        <br><br>
    </div>

</section>

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3> PurpleBus.Com</i> </h3>
            <p>We Belive In Trust.</p>
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
        </div>

        <div class="box">
            <h3>contact info</h3>
            <a href="#" class="links"> <i class="fas fa-phone"></i> +123-456-7890 </a>
            <a href="#" class="links"> <i class="fas fa-phone"></i> +111-222-3333 </a>
            <a href="#" class="links"> <i class="fas fa-envelope"></i> RedBus@gmail.com </a>
            <a href="#" class="links"> <i class="fas fa-map-marker-alt"></i> Nadiad, Gujart, india - 400104 </a>
        </div>

    </div>

</section>

<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
<script src="js/script.js"></script>

</body>
</html>

