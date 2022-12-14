<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="availablebus.aspx.cs" Inherits="BusReservationSystem.availablebus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/style.css">
    <title>Available Bus</title>
    <style>
        .grid{
    width: 100%; 
    word-wrap:break-word;
    table-layout: fixed;
    font-family: 'Nanum Gothic';
    padding-bottom: 10px;
    font-size: 1.75em;
}
    </style>
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
    <br><br><br><br><br><br>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="err" runat="server" ForeColor="Red"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [book_ticket]"></asp:SqlDataSource>
        </div>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand" CssClass="grid">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            <Columns>
                <asp:ButtonField ButtonType="Button" CommandName="Edit" Text="Book" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
