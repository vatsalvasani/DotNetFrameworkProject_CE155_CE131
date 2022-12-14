<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewreservation.aspx.cs" Inherits="BusReservationSystem.viewreservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/style.css">
    <title>View Reservation</title>
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
        <a href="adminhome.aspx">Home</a>
        <a href="addbus.aspx">Add Bus</a>
        <a href="busdata.aspx">View Bus Data</a>
        <a href="viewreservation.aspx">View Reservation</a>
        <a href="viewreview.aspx">View Review</a>
        <a href="customerdata.aspx">View Cutomer Data</a>
        
    </nav>

</header>
    <br><br><br><br><br><br>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="pnr" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CssClass="grid">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="pnr" HeaderText="PNR" ReadOnly="True" SortExpression="pnr" />
                    <asp:BoundField DataField="c_name" HeaderText="Customer Name" SortExpression="c_name" />
                    <asp:BoundField DataField="c_phone" HeaderText="Phone No." SortExpression="c_phone" />
                    <asp:BoundField DataField="c_to" HeaderText="Destination" SortExpression="c_to" />
                    <asp:BoundField DataField="c_from" HeaderText="Source" SortExpression="c_from" />
                    <asp:BoundField DataField="c_date" HeaderText="Date" SortExpression="c_date" />
                    <asp:BoundField DataField="c_dtime" HeaderText="Departure Time" SortExpression="c_dtime" />
                    <asp:BoundField DataField="c_atime" HeaderText="Arrival Time" SortExpression="c_atime" />
                    <asp:BoundField DataField="seats" HeaderText="Seats" SortExpression="seats" />
                    <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />
                    <asp:BoundField DataField="seat_no" HeaderText="Seat No." SortExpression="seat_no" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" HorizontalAlign="Center" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [book_ticket]"
                UpdateCommand="UPDATE [book_ticket] Set [c_name]=@c_name,[c_phone]=@c_phone ,[c_to]=@c_to,[c_from]=@c_from,[c_date]=@c_date,[c_dtime]=@c_dtime ,[c_atime]=@c_atime ,[seats] = @seats, [amount] = @amount,[seat_no]=@seat_no" 
                DeleteCommand="Delete From [book_ticket] where [pnr]=@pnr"
                ></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
