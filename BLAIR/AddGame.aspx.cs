﻿using System;
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
            string registerString = "Data Source=POIPUTER\\SQLEXPRESS;Initial Catalog=BLAIR;Integrated Security=True";
            SqlConnection registerConnection = new SqlConnection(registerString);
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT into Game_TABLE(GAMEID, GAMETITLE, PRICE, DESCRIPTION, REQUIREMENTS)" +
                   " VALUES (@GAMEID, @GAMETITLE, @PRICE, @DESCRIPTION, @REQUIREMENTS)");
                cmd.Connection = registerConnection;
                cmd.Parameters.AddWithValue("@GAMEID", GameIDTextBox);
                cmd.Parameters.AddWithValue("@GAMETITLE", GameTitleTextBox);
                cmd.Parameters.AddWithValue("@PRICE", PriceTextBox);
                cmd.Parameters.AddWithValue("@DESCRIPTION", GameDescriptionTextBox);
                cmd.Parameters.AddWithValue("@REQUIREMENTS", GameRequirementsTextBox);
                registerConnection.Open();
                cmd.ExecuteNonQuery();
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
    }
}