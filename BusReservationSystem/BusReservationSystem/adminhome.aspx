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
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<header class="header">

    <a href="#" class="logo"> </i> PurpleBus.Com </a>

    <nav class="navbar">
        <a href="#home">Home</a>
        <a href="addbus.aspx">Add Bus</a>
        <a href="busdata.aspx">View Bus Data</a>
        <a href="viewreservation.aspx">View Reservation</a>
        <a href="viewreview.aspx">View Review</a>
        <a href="customerdata.aspx">View Cutomer Data</a>
        
    </nav>

        <form runat="server"><asp:Button ID="Button2" runat="server" OnClick="logout_l" Text="Log Out" class="btn"/></form>

</header>

<section class="home" id="home" >

    <div class="content">
        <h3>Purple<span>Bus</span>.Com</h3>
        <p style = "color:black">Welcome!!! Book Your Ticket Now And Explore!!!.</p>
        <a href="bookticket.aspx" class="btn">Book Now</a>
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

