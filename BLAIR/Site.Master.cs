using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BLAIR
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SearchByButton_Click(object sender, EventArgs e)
        {
            //TODO search method
        }

        protected void LogoutLinkButton_Click(object sender, EventArgs e)
        {
            Session["LoggedUser"] = null;
            Response.Redirect("~/");
        }
    }
   
}