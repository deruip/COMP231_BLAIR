using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BLAIR
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            //TODO login method
        }

        //redirects to the registration page
        protected void ToRegisterPage(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            ClearPageTextBoxes(this);
            Response.Redirect("~/");
        }

        private void ClearPageTextBoxes(Control control)
        {
            foreach (Control currControl in control.Controls)
            {
                if (currControl is TextBox)
                {
                    (currControl as TextBox).Text = "";
                }
                else
                {
                    ClearPageTextBoxes(currControl);
                }
            }
        }
    }
}