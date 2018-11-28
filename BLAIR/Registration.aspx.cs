using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BLAIR
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void RegisterButton_Click(object sender, EventArgs e)
        {
            string registerString = "Data Source=POIPUTER\\SQLEXPRESS;Initial Catalog=BLAIR;Integrated Security=True";
            SqlConnection registerConnection = new SqlConnection(registerString);


            try
            {
                SqlCommand cmd = new SqlCommand("INSERT into User_TABLE(USERID, USERNAME, PASSWORD, LNAME, FNAME, DOB, COUNTRY, PHONE, EMAIL, ACCOUNT_TYPE, CC_FULLNAME, CC_NUMBER, CC_EXPIRYDATE, CC_CVC)" +
                   " VALUES (@USERID, @USERNAME, @PASSWORD, @LNAME, @FNAME, @DOB, @COUNTRY, @PHONE, @EMAIL, @ACCOUNT_TYPE, @CC_FULLNAME, @CC_NUMBER, @CC_EXPIRYDATE, @CC_CVC)");
                cmd.Connection = registerConnection;

                //cmd.Parameters.AddWithValue("@USERID", textBox_ID.Text);
                cmd.Parameters.AddWithValue("@USERNAME", textBox_Username.Text);
                cmd.Parameters.AddWithValue("@PASSWORD", textBox_Password.Text);
                cmd.Parameters.AddWithValue("@LNAME", textBox_LastName.Text);
                cmd.Parameters.AddWithValue("@FNAME", text_FirstName.Text);
                cmd.Parameters.AddWithValue("@DOB", textBox_DOB.Text);
                cmd.Parameters.AddWithValue("@COUNTRY", textBox_Country.Text);
                cmd.Parameters.AddWithValue("@PHONE", textBox_ContactNumber.Text);
                cmd.Parameters.AddWithValue("@EMAIL", textBox_Email.Text);
                cmd.Parameters.AddWithValue("@ACCOUNT_TYPE", textBox_AccountType.Text);
                cmd.Parameters.AddWithValue("@CC_FULLNAME", textBox_CreditCardName.Text);
                cmd.Parameters.AddWithValue("@CC_NUMBER", textBox_CreditCardNumber.Text);
                cmd.Parameters.AddWithValue("@CC_EXPIRYDATE", textBox_CreditCardExpiration.Text);
                cmd.Parameters.AddWithValue("@CC_CVC", textBox_CCV.Text);
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