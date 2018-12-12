using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BLAIR
{
    public partial class Contact : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void AddGameButton_Click(object sender, EventArgs e)
        {
            string registerString = "Data Source=PR-A321-18\\MSSQLSERVER2016;Initial Catalog=BLAIR;Integrated Security=True";
            SqlConnection registerConnection = new SqlConnection(registerString);
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT into GAMES(GAMETITLE, PRICE, gameDescription, REQUIREMENTS)" +
                   " VALUES (@GAMETITLE, @PRICE, @gameDescription, @REQUIREMENTS)");
                cmd.Connection = registerConnection;
                //   cmd.Parameters.AddWithValue("@GAMEID", GameIDTextBox.Text);
                cmd.Parameters.AddWithValue("@GAMETITLE", GameTitleTextBox.Text);
                cmd.Parameters.AddWithValue("@PRICE", PriceTextBox.Text);
                cmd.Parameters.AddWithValue("@gameDescription", GameDescriptionTextBox.Text);
                cmd.Parameters.AddWithValue("@REQUIREMENTS", GameRequirementsTextBox.Text);
                registerConnection.Open();
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Game has been added');", true);
            }
            catch (SqlException ex)
            {
                throw new InvalidOperationException("Invalid entries. Please try again", ex);
            }
            registerConnection.Close();
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

        protected void GameDescriptionTextBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}