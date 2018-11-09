<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddGame.aspx.cs" Inherits="AddGame" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BLAIR - Register Your Game</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="RegisterForm" style="font-family:Arial; " >
            <asp:Label ID="page_FirstParagraph" runat="server" Text="Please enter the game information: " />
            <br />  

            <div class="col-sm-6">
                <asp:TextBox ID="GameIDTextBox"
                    TextMode="SingleLine"
                    CssClass="register-input"
                    runat="server"
                    MaxLength="128"
                    placeholder="Game ID" />
            </div>
            <div class="col-sm-6 register-validator-message-container">
                <asp:RequiredFieldValidator ID="GameIDTextBox_RFV"
                    ControlToValidate="GameIDTextBox"
                    Display="Dynamic"
                    ErrorMessage="Game ID is required"
                    CssClass="register-input-error"
                    runat="server" />
            </div>

            <div class="col-sm-6">
                <asp:TextBox ID="GameTitleTextBox"
                    TextMode="SingleLine"
                    CssClass="register-input"
                    runat="server"
                    MaxLength="128"
                    placeholder="Game Title" />
            </div>
            <div class="col-sm-6 register-validator-message-container">
                <asp:RequiredFieldValidator ID="GameTitleTextBox_RFV"
                    ControlToValidate="GameTitleTextBox"
                    Display="Dynamic"
                    ErrorMessage="Game Title is required"
                    CssClass="register-input-error"
                    runat="server" />
            </div>

            <div class="col-sm-6">
                <asp:TextBox ID="PriceTextBox"
                    TextMode="SingleLine"
                    CssClass="register-input"
                    runat="server"
                    MaxLength="13"
                    ReadOnly="true"
                    placeholder="Price" />
            </div>
            <div class="col-sm-6 register-validator-message-container">
                <asp:RequiredFieldValidator ID="PriceTextBox_RFV"
                    ControlToValidate="PriceTextBox"
                    Display="Dynamic"
                    ErrorMessage="Price is required"
                    CssClass="register-input-error"
                    runat="server" />
            </div>

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

            <div class="col-sm-12 register-button-container">
                <div class="col-sm-6" style="padding-top: 50px;">
                    <asp:Button ID="UpdateButton" Text="Updte Book" CssClass="ub-book-button" runat="server" OnClick="UpdateButton_Click" />
                </div>
                <div class="col-sm-6" style="padding-top: 50px;">
                    <asp:Button ID="CancelButton" Text="Cancel" CssClass="ub-book-button" runat="server" OnClick="CancelButton_Click" CausesValidation="false" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>

