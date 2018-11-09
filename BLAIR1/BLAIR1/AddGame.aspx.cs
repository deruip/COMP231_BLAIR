using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddGame : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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