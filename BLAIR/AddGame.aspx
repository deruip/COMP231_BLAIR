<%@ Page Title="Add Game" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddGame.aspx.cs" Inherits="BLAIR.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-sm-12">
        <div class="col-sm-3">&nbsp</div>
        <div class="col-sm-6 register-input-container">
            <div class="col-sm-12 register-panel-title">
                <asp:Label ID="TitleLabel" Text="Game Registration" runat="server" />
            </div><div class="col-sm-12">
        <asp:TextBox ID="GameIDTextBox"
            TextMode="SingleLine"
            CssClass="register-input"
            runat="server"
            MaxLength="128"
            placeholder="Game ID" />
    </div>
    <div class="col-sm-12 register-validator-message-container">
        <asp:RequiredFieldValidator ID="GameIDTextBox_RFV"
            ControlToValidate="GameIDTextBox"
            Display="Dynamic"
            ErrorMessage="Game ID is required"
            CssClass="register-input-error"
            runat="server" />
    </div>

    <div class="col-sm-12">
        <asp:TextBox ID="GameTitleTextBox"
            TextMode="SingleLine"
            CssClass="register-input"
            runat="server"
            MaxLength="128"
            placeholder="Game Title" />
    </div>
    <div class="col-sm-12 register-validator-message-container">
        <asp:RequiredFieldValidator ID="GameTitleTextBox_RFV"
            ControlToValidate="GameTitleTextBox"
            Display="Dynamic"
            ErrorMessage="Game Title is required"
            CssClass="register-input-error"
            runat="server" />
    </div>

    <div class="col-sm-12">
        <asp:TextBox ID="PriceTextBox"
            TextMode="Number"
            CssClass="register-input"
            runat="server"
            MaxLength="13"
            ReadOnly="true"
            placeholder="Price" />
    </div>
    <div class="col-sm-12 register-validator-message-container">
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
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
            ControlToValidate="GameRequirementsTextBox"
            Display="Dynamic"
            ErrorMessage="Game Requirements is required"
            CssClass="register-input-error"
            runat="server" />
    </div>

    <div class="col-sm-12 register-button-container">
        <div class="col-sm-6" style="padding-top: 50px;">
            <asp:Button ID="ButtonAddGame" Text="Add Game" CssClass="ub-game-button" runat="server" OnClick="AddGameButton_Click" />
        </div>
        <div class="col-sm-6" style="padding-top: 50px;">
            <asp:Button ID="CancelButton" Text="Cancel" CssClass="ub-game-button" runat="server" OnClick="CancelButton_Click" CausesValidation="false" />
        </div>
    </div>
            </div>
        </div>
    
</asp:Content>
