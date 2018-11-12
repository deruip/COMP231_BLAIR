using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class Page_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }

    public void ButtonRegisterListener(object sender, EventArgs e)
    {
        string registerString = "Data Source=POIPUTER\\SQLEXPRESS;Initial Catalog=BLAIR;Integrated Security=True";
        SqlConnection registerConnection = new SqlConnection(registerString);


        SqlCommand cmd = new SqlCommand("INSERT into User_TABLE(USERID, USERNAME, PASSWORD, LNAME, FNAME, DOB, COUNTRY, PHONE, EMAIL, ACCOUNT_TYPE, CC_FULLNAME, CC_NUMBER, CC_EXPIRYDATE, CC_CVC)" +
            " VALUES (@USERID, @USERNAME, @PASSWORD, @LNAME, @FNAME, @DOB, @COUNTRY, @PHONE, @EMAIL, @ACCOUNT_TYPE, @CC_FULLNAME, @CC_NUMBER, @CC_EXPIRYDATE, @CC_CVC)");
        cmd.Connection = registerConnection;

        cmd.Parameters.AddWithValue("@USERID", textBox_ID.Text);
        cmd.Parameters.AddWithValue("@USERNAME", textBox_Username.Text);
        cmd.Parameters.AddWithValue("@PASSWORD", textBox_Password.Text);
        cmd.Parameters.AddWithValue("@LNAME", textBox_LastName.Text);
        cmd.Parameters.AddWithValue("@FNAME", text_FirstName.Text);
        cmd.Parameters.AddWithValue("@DOB", textBox_DOB.Text);
        cmd.Parameters.AddWithValue("@COUNTRY", textBox_Country.Text);
        cmd.Parameters.AddWithValue("@PHONE", textBox_ContactNumber.Text);
        cmd.Parameters.AddWithValue("@EMAIL", textBox_Email.Text);
        cmd.Parameters.AddWithValue("@ACCOUNT_TYPE", text_AccountType.Text);
        cmd.Parameters.AddWithValue("@CC_FULLNAME", textBox_CreditCardName.Text);
        cmd.Parameters.AddWithValue("@CC_NUMBER", textBox_CreditCardNumber.Text);
        cmd.Parameters.AddWithValue("@CC_EXPIRYDATE", text_CreditCardExpiration.Text);
        cmd.Parameters.AddWithValue("@CC_CVC", text_CreditCardCCV.Text);
        registerConnection.Open();
        cmd.ExecuteNonQuery();
        registerConnection.Close();
    }
}