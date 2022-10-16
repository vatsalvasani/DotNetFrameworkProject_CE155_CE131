using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusReservationSystem
{
    public partial class addtrain : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\VATSAL VASANI\\DDU SEM 5\\DDU Sem 5\\WAD\\PROJECT1\\BusReservationSystem\\BusReservationSystem\\App_Data\\BusReservation.mdf\";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addbusbtn_Click(object sender, EventArgs e)
        {
            string success1 = "SucessFully Added Into Database";
            string ins = "Insert into [avail_bus] (station_no,dstation_name,astation_name,dtime,atime,date,bus_no,rate,avail_seat) values(@station_no,@ds,@as,@dt,@at,@date,@busno,@rate,@seat)";
            SqlCommand com = new SqlCommand(ins, con);
            com.Parameters.AddWithValue("@station_no", TextBox1.Text);
            com.Parameters.AddWithValue("@ds", DropDownList1.SelectedValue);
            com.Parameters.AddWithValue("@as", DropDownList2.SelectedValue);
            com.Parameters.AddWithValue("@dt", TextBox2.Text);
            com.Parameters.AddWithValue("@at", TextBox3.Text);
            com.Parameters.AddWithValue("@date", TxtDob.Text);
            com.Parameters.AddWithValue("@busno", TextBox4.Text);
            com.Parameters.AddWithValue("@rate", TextBox5.Text);
            com.Parameters.AddWithValue("@seat", TextBox6.Text);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            success.Text = success1;

        }
    }
}