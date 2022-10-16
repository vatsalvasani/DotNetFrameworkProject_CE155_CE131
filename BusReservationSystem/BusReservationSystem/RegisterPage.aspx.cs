using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Common;


namespace BusReservationSystem
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection();
        //con.ConnectionString = ConfigurationManager.ConnectionStrings["customerConnection"].ConnectionString;
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\VATSAL VASANI\\DDU SEM 5\\DDU Sem 5\\WAD\\PROJECT1\\BusReservationSystem\\BusReservationSystem\\App_Data\\BusReservation.mdf\";Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string userInvalid = "One User Is Already Register With This Email Id.";
            string checkDatabase = "SELECT * FROM customer WHERE Email = @em AND Password = @pas";
            con.Open();
            SqlCommand command = new SqlCommand(checkDatabase, con);
            command.Parameters.AddWithValue("@em", emailtxt.Text);
            command.Parameters.AddWithValue("@pas", passtxt.Text);
            command.ExecuteNonQuery();
            SqlDataReader reader = command.ExecuteReader();
            
            if (reader.HasRows)
            {
                err.Text = userInvalid;
                con.Close();
            }  
            else
            {
                con.Close();
                string ins = "Insert into [customer] (Name,Email,Address,Password,mobileno) values(@name,@email,@address,@pas,@mob)";
                SqlCommand com = new SqlCommand(ins, con);
                com.Parameters.AddWithValue("@name", nametxt.Text);
                com.Parameters.AddWithValue("@email", emailtxt.Text);
                com.Parameters.AddWithValue("@address", addtext.Text);
                com.Parameters.AddWithValue("@pas", passtxt.Text);
                com.Parameters.AddWithValue("@mob", mobtxt.Text);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
            }
            
        }
    }
}