using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusReservationSystem
{
    public partial class viewstatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void status_Click(object sender, EventArgs e)
        {
            Session["pnr"] = pnr.Text;
            Server.Transfer("status.aspx");
        }
    }
}