using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusReservationSystem
{
    public partial class contact1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\VATSAL VASANI\\DDU SEM 5\\DDU Sem 5\\WAD\\PROJECT1\\BusReservationSystem\\BusReservationSystem\\App_Data\\BusReservation.mdf\";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ins = "Insert into [feedback] (name,email,contact,feedback) values(@name,@email,@contact,@feedback)";
            SqlCommand com = new SqlCommand(ins, con);
            com.Parameters.AddWithValue("@name", name.Text);
            com.Parameters.AddWithValue("@email", email.Text);
            com.Parameters.AddWithValue("@contact", contact.Text);
            com.Parameters.AddWithValue("@feedback", feedback.Text);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            Label5.Text = "Thank's For Your Feedback It's Valuable For Us....";



        }
    }
}