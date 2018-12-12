using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BLAIR
{
    public partial class _Default : Page
    {
        public bool isCorrect = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string userName = "username";
            string password = "password";

            if (EmailLoginTextBox.Text.Equals(userName) && PasswordLoginTextBox.Text.Equals(password))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alert Box", "alert('Successful Login!');", true);

            }
            else
            {
                string registerString = "Data Source=PR-A321-15\\MSSQLSERVER2016;Initial Catalog=BLAIR;Integrated Security=True";
                SqlConnection loginConnection = new SqlConnection(registerString);

                string loginString = "SELECT * FROM User_TABLE" +
                       " WHERE email='" + EmailLoginTextBox.Text + "' and userPassword='" + PasswordLoginTextBox.Text + "'";

                string showUsername = "SELECT userName FROM User_Table" + " WHERE email='" + EmailLoginTextBox.Text + "'"; 
                try
                {
                    SqlCommand cmd = new SqlCommand(loginString);
                    
                    cmd.Connection = loginConnection;
                    loginConnection.Open();
                    SqlDataReader sdr = cmd.ExecuteReader();

                    if (sdr.Read())
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alert Box", "alert('Successful_Login!');", true);
                        SqlCommand getUser = new SqlCommand(showUsername);
                        cmd.Connection = loginConnection;
                        var user = User.Identity.Name;

                        loggedUser.Text = "Welcome, " + user;
                        //SqlDataReader user_Sdr = cmd.ExecuteReader();

                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alert Box", "alert('Invalid Login!');", true);
                    }
                }
                catch (Exception ex)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alert Box", "alert('Invalid Input!');", true);

                    throw new InvalidOperationException("Invalid entries. Please try again", ex);

                }
                
                       
                loginConnection.Close();
                
            }
        }
        //redirects to the registration page
        protected void ToRegisterPage(object sender, EventArgs e)
        {
            Response.Redirect("~/Registration.aspx");
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