using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusReservationSystem
{
    public partial class bookticket : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["from"] = DropDownList1.SelectedValue;
            Session["to"] = DropDownList2.SelectedValue;
            Session["date"] = TxtDob.Text;
            Session["noofpass"] = TextBox1.Text;
            Server.Transfer("availablebus.aspx");
        }
    }
}