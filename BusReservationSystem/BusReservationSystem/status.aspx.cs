using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusReservationSystem
{
    public partial class status : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\VATSAL VASANI\\DDU SEM 5\\DDU Sem 5\\WAD\\PROJECT1\\BusReservationSystem\\BusReservationSystem\\App_Data\\BusReservation.mdf\";Integrated Security=True");

    
        protected void Page_Load(object sender, EventArgs e)
        {
            string Invalid = "OOPS !!!!!!!!!!!! NO DATA FOUND";

            string pnr_no = Session["pnr"].ToString();

            string checkDatabase = "SELECT * FROM book_ticket WHERE (pnr=@pnr);";

            con.Open();
            SqlCommand command = new SqlCommand(checkDatabase, con);

            command.Parameters.AddWithValue("@pnr", pnr_no);

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
                SqlCommand cmd = new SqlCommand("SELECT * FROM book_ticket WHERE pnr=@pnr;", con);

                cmd.Parameters.AddWithValue("@pnr", pnr_no); 
                
                con.Open();
                SqlDataReader wan = cmd.ExecuteReader();
                GridView1.DataSource = wan;
                GridView1.DataBind();
                con.Close();

            }

        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string pnr_no = Session["pnr"].ToString();
            SqlCommand cmd = new SqlCommand("DELETE FROM book_ticket WHERE pnr=@pnr;", con);
            cmd.Parameters.AddWithValue("@pnr", pnr_no);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            err1.Text = "Your Ticket Is Canceled You Get Refund After Some Service Days....Thank You!!! See U Soon.....";
        }
    }
}