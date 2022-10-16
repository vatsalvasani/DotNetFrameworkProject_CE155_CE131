using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusReservationSystem
{
    public partial class booking : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\VATSAL VASANI\\DDU SEM 5\\DDU Sem 5\\WAD\\PROJECT1\\BusReservationSystem\\BusReservationSystem\\App_Data\\BusReservation.mdf\";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void book_ticket(object sender, EventArgs e)
        {
            string from = Session["from"].ToString();
            string to = Session["to"].ToString();
            string date = Session["date"].ToString();
            string noofpass = Session["noofpass"].ToString();

            string dep_time1 = "SELECT dtime FROM avail_bus WHERE dstation_name = @dstation AND astation_name = @astation AND date=@date";
            con.Open();
            SqlCommand command = new SqlCommand(dep_time1, con);
            command.Parameters.AddWithValue("@dstation", from);
            command.Parameters.AddWithValue("@astation",to);
            command.Parameters.AddWithValue("@date", date);
            String dep_time = Convert.ToString(command.ExecuteScalar());
            con.Close();

            string a_time1 = "SELECT atime FROM avail_bus WHERE dstation_name = @dstation AND astation_name = @astation AND date=@date";
            con.Open();
            SqlCommand command1 = new SqlCommand(a_time1, con);
            command1.Parameters.AddWithValue("@dstation", from);
            command1.Parameters.AddWithValue("@astation", to);
            command1.Parameters.AddWithValue("@date", date);
            String a_time = Convert.ToString(command1.ExecuteScalar());
            con.Close();

            string rate = "SELECT rate FROM avail_bus WHERE dstation_name = @dstation AND astation_name = @astation AND date=@date";
            con.Open();
            SqlCommand command2 = new SqlCommand(rate, con);
            command2.Parameters.AddWithValue("@dstation", from);
            command2.Parameters.AddWithValue("@astation", to);
            command2.Parameters.AddWithValue("@date", date);
            int rate1 = Convert.ToInt32(command2.ExecuteScalar());
            con.Close();
            int no_of_pass = Int32.Parse(noofpass);
            int rate2 = rate1 * no_of_pass;

            string avail_seat = "SELECT avail_seat FROM avail_bus WHERE(dstation_name = @dstation AND astation_name = @astation) AND(date = @date)";
            con.Open();
            SqlCommand command3 = new SqlCommand(avail_seat, con);
            command3.Parameters.AddWithValue("@dstation", from);
            command3.Parameters.AddWithValue("@astation", to);
            command3.Parameters.AddWithValue("@date", date);
            int avail_seat1 = Convert.ToInt32(command3.ExecuteScalar());
            con.Close();
            avail_seat1 = avail_seat1 - no_of_pass;

            string bus_no1 = "SELECT bus_no FROM avail_bus WHERE (dstation_name = @dstation AND astation_name = @astation) AND (date=@date)";
            con.Open();
            SqlCommand command4 = new SqlCommand(bus_no1, con);
            command4.Parameters.AddWithValue("@dstation", from);
            command4.Parameters.AddWithValue("@astation", to);
            command4.Parameters.AddWithValue("@date", date);
            String bus_no = Convert.ToString(command4.ExecuteScalar());
            con.Close();

            string seat_no = "";
            int j = 1;
            for (int i = avail_seat1+1; j <=  no_of_pass ; i++,j++)
            {
                seat_no = seat_no + i + ",";
            }

            string ins = "Insert into [book_ticket] (c_name,c_phone,c_to,c_from,c_date,c_dtime,c_atime,seats,amount,seat_no,bus_no) values" + "(@c_name,@c_phone,@c_to,@c_from,@c_date,@c_dtime,@c_atime,@seats,@amount,@seat_no,@bus_no)";
            SqlCommand com = new SqlCommand(ins, con);
            com.Parameters.AddWithValue("@c_name", txt_name.Text);
            com.Parameters.AddWithValue("@c_phone", txt_phone.Text);
            com.Parameters.AddWithValue("@c_to", to);
            com.Parameters.AddWithValue("@c_from", from);
            com.Parameters.AddWithValue("@c_date", date);
            com.Parameters.AddWithValue("@c_dtime", dep_time);
            com.Parameters.AddWithValue("@c_atime", a_time);
            com.Parameters.AddWithValue("@seats", noofpass);
            com.Parameters.AddWithValue("@amount", rate2);
            com.Parameters.AddWithValue("@seat_no", seat_no);
            com.Parameters.AddWithValue("@bus_no", bus_no);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();


            string ins1 = "UPDATE avail_bus SET avail_seat = @available_seat WHERE (dstation_name = @dstation AND astation_name = @astation) AND (date=@date)";
            SqlCommand com1 = new SqlCommand(ins1, con);
            com1.Parameters.AddWithValue("@available_seat", avail_seat1);
            com1.Parameters.AddWithValue("@dstation", from);
            com1.Parameters.AddWithValue("@astation", to);
            com1.Parameters.AddWithValue("@date", date);
            con.Open();
            com1.ExecuteNonQuery();
            con.Close();


            string pnr = "SELECT pnr FROM book_ticket WHERE(c_from = @dstation AND c_to = @astation) AND(c_name=@c_name AND c_date = @date)";
            con.Open();
            SqlCommand command5 = new SqlCommand(pnr, con);
            command5.Parameters.AddWithValue("@c_name", txt_name.Text);
            command5.Parameters.AddWithValue("@dstation", from);
            command5.Parameters.AddWithValue("@astation", to);
            command5.Parameters.AddWithValue("@date", date);
            int pnr_no = Convert.ToInt32(command5.ExecuteScalar());
            con.Close();
            Session["pnr_no"] = pnr_no;
            Server.Transfer("payment.aspx");


        }
    }
}