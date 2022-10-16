<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookticket.aspx.cs" Inherits="BusReservationSystem.bookticket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        	
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <title></title>
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
        <h1>Search Bus</h1>
  <div class="elem-group">
<asp:Label ID="Label1" runat="server" Text="From :" CssClass="label"></asp:Label>
              <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True">Surat</asp:ListItem>
            <asp:ListItem>Nadiad</asp:ListItem>
            <asp:ListItem>Anand</asp:ListItem>
            <asp:ListItem>Botad</asp:ListItem>
            <asp:ListItem>Jamnagar</asp:ListItem>
            <asp:ListItem>Rajkot</asp:ListItem>
            <asp:ListItem>Junagadh</asp:ListItem>
            <asp:ListItem>Kutch</asp:ListItem>
            <asp:ListItem>Sabarkantha</asp:ListItem>
            <asp:ListItem>Banaskantha</asp:ListItem>
            <asp:ListItem>Mumbai</asp:ListItem>
            <asp:ListItem>Chennai</asp:ListItem>
            <asp:ListItem>Assam</asp:ListItem>
        </asp:DropDownList>
&nbsp;
  </div>

        <div class="elem-group">
<p>
            <asp:Label ID="Label5" runat="server" Text="To :" CssClass="label"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>Surat</asp:ListItem>
                <asp:ListItem Selected="True">Nadiad</asp:ListItem>
                <asp:ListItem>Anand</asp:ListItem>
                <asp:ListItem>Botad</asp:ListItem>
                <asp:ListItem>Jamnagar</asp:ListItem>
                <asp:ListItem>Rajkot</asp:ListItem>
                <asp:ListItem>Junagadh</asp:ListItem>
                <asp:ListItem>Kutch</asp:ListItem>
                <asp:ListItem>Sabarkantha</asp:ListItem>
                <asp:ListItem>Banaskantha</asp:ListItem>
                <asp:ListItem>Mumbai</asp:ListItem>
                <asp:ListItem>Chennai</asp:ListItem>
                <asp:ListItem>Assam</asp:ListItem>
            </asp:DropDownList>
        </p>
  </div>



  <div class="elem-group">
                <p>
            <asp:Label ID="Label3" runat="server" Text="Date :" CssClass="label"></asp:Label>
            <asp:TextBox ID="TxtDob" runat="server" Text='<%# Bind("DateofBirth", "{0:yyyy-MM-dd}") %>' TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtDob" ErrorMessage="Date Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
  </div>


  <div class="elem-group">

        <p>
            <asp:Label ID="Label4" runat="server" Text="No. Of Passenger :" CssClass="label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="No. Of Passengers Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Valid No. Of Passenger" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
        </p>
  </div>

        <p>
            <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" CssClass="label" />
        </p>
        </form>

</body>
</html>
