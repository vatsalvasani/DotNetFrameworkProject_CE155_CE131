<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewstatus.aspx.cs" Inherits="BusReservationSystem.viewstatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <title>View Status</title>
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
                <h1>View Status</h1>
  <div class="elem-group">
        <asp:Label ID="Label1" runat="server" Text="Enter Your PNR No. : " CssClass="label"></asp:Label>
        <asp:TextBox ID="pnr" runat="server">Ex : 125</asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="pnr" ErrorMessage="PNR No. Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        
      <div>
            <asp:Button ID="status" runat="server" OnClick="status_Click" Text="View Status" CssClass="label" />
        </div>
    </form>
</body>
</html>
