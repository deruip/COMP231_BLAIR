<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BLAIR._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-sm-12">
        <div class="col-sm-3">&nbsp</div>
        <div class="col-sm-6 register-input-container">
            <div class="col-sm-12 register-panel-title">
                <asp:Label ID="TitleLabel" Text="Login" runat="server" />
            </div>
            <div class="col-sm-12">
                <asp:TextBox ID="EmailLoginTextBox"
                    ToolTip="Enter your email here"
                    TextMode="SingleLine"
                    CssClass="register-input"
                    runat="server"
                    placeholder="Email" />
            </div>
            <div class="col-sm-12 register-validator-message-container">
                <asp:RequiredFieldValidator ID="EmailTextBox_RFV"
                    ControlToValidate="EmailLoginTextBox"
                    Display="Dynamic"
                    ErrorMessage="Email is required"
                    CssClass="register-input-error"
                    runat="server" />
            </div>
            <div class="col-sm-12">
                <asp:TextBox ID="PasswordLoginTextBox"
                    ToolTip="Enter your password here"
                    TextMode="Password"
                    CssClass="register-input"
                    runat="server"
                    placeholder="Password" />
            </div>
            <div class="col-sm-12 register-validator-message-container">
                <asp:RequiredFieldValidator ID="PasswordTextBox_RFV"
                    ControlToValidate="PasswordLoginTextBox"
                    Display="Dynamic"
                    ErrorMessage="Password is required"
                    CssClass="register-input-error"
                    runat="server" />
            </div>
            <div class="col-sm-12 register-button-container" style="margin-top: 40px;">
                <div class="col-sm-3">
                    <asp:Button ID="LoginButon" Text="Login" CssClass="ub-game-button" runat="server" Onclick="LoginButton_Click" />
                </div>
                <div class="col-sm-3">
                    <asp:Button ID="CancelButton" Text="Cancel" CssClass="ub-game-button" runat="server" Onclick="CancelButton_Click" CausesValidation="false" />
                </div>
                <div class="col-sm-6">
                    <asp:Button ID="RegisterButton" Text="No Account? Register Here" CssClass="ub-game-button" runat="server" Onclick="ToRegisterPage" />
                </div>
            </div>
        </div>
        <div class="col-sm-3">&nbsp</div>

    </div>

</asp:Content>
