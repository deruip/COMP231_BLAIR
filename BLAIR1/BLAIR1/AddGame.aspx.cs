using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddGame : System.Web.UI.Page
{
    public int GameId { get; set; }

    public string GameTitle { get; set; }

    public int Price { get; set; }

    public string Description { get; set; }

    public string Requirements { get; set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        GameIDTextBox.Focus();
    }

    public AddGame Register(int gameId, string gameTitle, int price, string description, string requirements)
    {
        QueryParameter gameGameId = new QueryParameter(paramPrefix + "gameGameId", gameId, Database.DbType.CHAR, 64, ParameterDirection.Input);
        QueryParameter gameGameTitle = new QueryParameter(paramPrefix + "gameGameTitle", gameTitle, Database.DbType.VARCHAR, 64, ParameterDirection.Input);
        QueryParameter gamePrice = new QueryParameter(paramPrefix + "gamePrice", price, Database.DbType.CHAR, 64, ParameterDirection.Input);
        QueryParameter gameDescription = new QueryParameter(paramPrefix + "gameDescription", description, Database.DbType.VARCHAR, 64, ParameterDirection.Input);
        QueryParameter gameRequerements = new QueryParameter(paramPrefix + "gameRequerements", requirements, Database.DbType.VARCHAR, 64, ParameterDirection.Input);

        if (int.Parse(gameId.Value.ToString()) > 0)
        {
            return new AddGame()
            {
                PrimaryKey = new DecimalPrimaryKey(decimal.Parse(gameId.Value.ToString())),
                GameTitle = gameTitle,
                Price = price,
                Description = description,
                Requirements = requirements,
            };
        }

        return null;
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