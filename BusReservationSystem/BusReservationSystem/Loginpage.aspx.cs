using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Net;

namespace BusReservationSystem
{
    public partial class Loginpage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\VATSAL VASANI\\DDU SEM 5\\DDU Sem 5\\WAD\\PROJECT1\\BusReservationSystem\\BusReservationSystem\\App_Data\\BusReservation.mdf\";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string check = "select count(*) from [customer] where Email = @em and Password = @pass";
            con.Open();
            SqlCommand com = new SqlCommand(check, con);
            com.Parameters.AddWithValue("@em", usertxt.Text);
            com.Parameters.AddWithValue("@pass", passtxt.Text);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1 && usertxt.Text == "admin@gmail.com")
            {
                Response.Redirect("adminhome.aspx");
            }
            else if (temp == 1)
            {
                Response.Redirect("home.aspx");
            
            }
            else
            {
                err.Text = "YOUR ID OR PASSWORD IS IN VALID";

            }
        }

        protected void HyperLink1_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPage.aspx");
        }
    }
}