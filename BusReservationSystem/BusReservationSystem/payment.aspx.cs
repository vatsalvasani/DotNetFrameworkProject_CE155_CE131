using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusReservationSystem
{
    public partial class payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int pnr_no = Convert.ToInt32(Session["pnr_no"].ToString());
            pnr1.Text = "Your Ticket Is Booked Successfully And Your Pnr No. Is " + pnr_no + " You Can Check Status Of Your Ticket Wishing You Happy And Safe Journey!!!!!!!!!";
                
        }
    }
}