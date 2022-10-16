<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addbus.aspx.cs" Inherits="BusReservationSystem.addtrain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    	<link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <header class="header">

    <a href="#" class="logo"> </i> PurpleBus.Com </a>

    <nav class="navbar">
        <a href="adminhome.aspx">Home</a>
        <a href="addbus.aspx">Add Bus</a>
        <a href="busdata.aspx">View Bus Data</a>
        <a href="viewreservation.aspx">View Reservation</a>
        <a href="viewreview.aspx">View Review</a>
        <a href="customerdata.aspx">View Cutomer Data</a>
        
    </nav>

</header>
    <br><br><br><br>
    <form id="form1" runat="server">
        <h1>Add Bus</h1>
  <div class="elem-group">
                <asp:Label ID="sta_no" runat="server" Text="Station No : " CssClass="label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Station_no Can Not Be An Empty" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Valid Station No." ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
  </div>

        <div class="elem-group">
         <asp:Label ID="dsta_name" runat="server" Text="Departure Station  : " CssClass="label"></asp:Label>
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
  </div>



  <div class="elem-group">
            <asp:Label ID="asta_name" runat="server" Text="Arrival Station : " CssClass="label"></asp:Label>
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
  </div>


  <div class="elem-group">
            <asp:Label ID="d_time" runat="server" Text="Departure Time :" CssClass="label"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server">01:00 AM</asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Departure Time Can Not Be An Empty" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Valid Time" ForeColor="Red" ValidationExpression="((1[0-2]|0?[0-9]):([0-5][0-9]) ?([AaPp][Mm]))"></asp:RegularExpressionValidator>
  </div>

  <div class="elem-group">
                <asp:Label ID="a_time" runat="server" Text="Arrival Time : " CssClass="label"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server">01:00 PM</asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Arrival Time Can Not Be An Empty" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Valid Time" ForeColor="Red" ValidationExpression="((1[0-2]|0?[0-9]):([0-5][0-9]) ?([AaPp][Mm]))"></asp:RegularExpressionValidator>
 </div>

         <div class="elem-group">
                    <asp:Label ID="date" runat="server" Text="Date : " CssClass="label"></asp:Label>
        <asp:TextBox ID="TxtDob" runat="server" Text='<%# Bind("DateofBirth", "{0:yyyy-MM-dd}") %>' TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtDob" ErrorMessage="Date Can Not Be An Empty" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </div>


         <div class="elem-group">
                            <asp:Label ID="bus_no" runat="server" Text="Bus No :" CssClass="label"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Bus No. Can Not Be An Empty" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </div>

         <div class="elem-group">
        <asp:Label ID="rate" runat="server" Text="Rate : " CssClass="label"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="Rate Can Not Be An Empty" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Valid Rate" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
            </div>

         <div class="elem-group">
        <asp:Label ID="t_seat" runat="server" Text="Total Seats : " CssClass="label"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="Seat Can Not Be An Empty" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter Valid Seat No" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
            </div>

<p>
<asp:Label ID="success" runat="server" ForeColor="Green" CssClass="label"></asp:Label>
  </p>
        <asp:Button ID="addbusbtn" runat="server" OnClick="addbusbtn_Click" Text="ADD BUS" />
</form>

</body>
</html>
