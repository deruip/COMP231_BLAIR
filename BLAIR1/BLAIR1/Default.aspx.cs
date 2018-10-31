using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void LoginMethod(object sender, EventArgs e)
    {
        //TODO
        //create code to interact with database
    }
    //redirects to the registration page
    protected void ToRegisterPage(object sender, EventArgs e)
    {
        Response.Redirect("Page_Registration.aspx");
    }
}