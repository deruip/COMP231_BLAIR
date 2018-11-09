<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddGame.aspx.cs" Inherits="AddGame" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BLAIR - Register an account</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="RegisterForm" style="font-family:Arial; " >
            <asp:Label ID="page_FirstParagraph" runat="server" Text="Please enter the game information: " />
            <br />  

            <asp:Label ID="text_GameID" runat="server" Text="Game ID: " />
            <asp:TextBox ID="textBox_GameID" runat="server" />
            <br />

            <asp:Label ID="text_GameTitle" runat="server" Text="Game Title: " />
            <asp:TextBox ID="textBox_GameTitle" runat="server" />
            <br />

            <asp:Label ID="text_Price" runat="server" Text="Price: "/>
            <asp:TextBox ID="textBox_Price" runat="server" />
            <br />

            <div class="col-sm-12" style="overflow: hidden;">
                <asp:TextBox ID="GameDescriptionTextBox"
                    TextMode="MultiLine"
                    CssClass="register-input"
                    MaxLength="2048"
                    Rows="3"
                    runat="server"
                    placeholder="Game Description" />
            </div>
            <div class="col-sm-12 register-validator-message-container">
                <asp:RequiredFieldValidator ID="GameDescriptionTextBox_RFV"
                    ControlToValidate="GameDescriptionTextBox"
                    Display="Dynamic"
                    ErrorMessage="Game Description is required"
                    CssClass="register-input-error"
                    runat="server" />
            </div>

            <div class="col-sm-12" style="overflow: hidden;">
                <asp:TextBox ID="GameRequirementsTextBox"
                    TextMode="MultiLine"
                    CssClass="register-input"
                    MaxLength="2048"
                    Rows="3"
                    runat="server"
                    placeholder="Game Requirements" />
            </div>
            <div class="col-sm-12 register-validator-message-container">
                <asp:RequiredFieldValidator ID="GameDescriptionTextBox_RFV"
                    ControlToValidate="GameRequirementsTextBox"
                    Display="Dynamic"
                    ErrorMessage="Game Requirements is required"
                    CssClass="register-input-error"
                    runat="server" />
            </div>
            </div>
    </form>
</body>
</html>

