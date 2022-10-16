using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace BusReservationSystem
{
    public partial class availablebus : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\VATSAL VASANI\\DDU SEM 5\\DDU Sem 5\\WAD\\PROJECT1\\BusReservationSystem\\BusReservationSystem\\App_Data\\BusReservation.mdf\";Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {

            string Invalid = "OOPS !!!!!!!!!!!! NO DATA FOUND";

            string from = Session["from"].ToString();
            string to = Session["to"].ToString();
            string date = Session["date"].ToString() ;
            string noofpass = Session["noofpass"].ToString() ;

            string checkDatabase = "SELECT * FROM avail_bus WHERE (dstation_name = @from AND astation_name = @to) AND (date = @date AND avail_seat >= @noofpass);";
            
            con.Open();
            SqlCommand command = new SqlCommand(checkDatabase, con);
            
            command.Parameters.AddWithValue("@from",from);
            command.Parameters.AddWithValue("@to", to);
            command.Parameters.AddWithValue("@date", date);
            command.Parameters.AddWithValue("@noofpass", noofpass);

            command.ExecuteNonQuery();
            SqlDataReader reader = command.ExecuteReader();

            if (!reader.HasRows)
            {
                err.Text = Invalid;
                con.Close();
            }
            else
            {
                con.Close();
                SqlCommand cmd = new SqlCommand("SELECT * FROM avail_bus WHERE (dstation_name = @from AND astation_name = @to) AND (date = @date AND avail_seat >= @noofpass);", con);

                cmd.Parameters.AddWithValue("@from", from);
                cmd.Parameters.AddWithValue("@to", to);
                cmd.Parameters.AddWithValue("@date", date);
                cmd.Parameters.AddWithValue("@noofpass", noofpass); con.Open();

                SqlDataReader wan = cmd.ExecuteReader();
                GridView1.DataSource = wan;
                GridView1.DataBind();
                con.Close();
                
            }

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string from = Session["from"].ToString();
            string to = Session["to"].ToString();
            string date = Session["date"].ToString();
            string noofpass = Session["noofpass"].ToString();
            Session[from] = from;
            Session[to] = to;
            Session[date] = date;
            Session[noofpass] = noofpass;
            Server.Transfer("booking.aspx");
        }
    }
}