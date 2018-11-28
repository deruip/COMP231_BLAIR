<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="BLAIR.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-sm-12">
        <div class="col-sm-3">&nbsp</div>
        <div class="col-sm-6 register-input-container">
            <div class="col-sm-12 register-panel-title">
                <asp:Label ID="TitleLabel" Text="User Registration" runat="server" />
            </div>
            <div class="col-sm-12">
                <asp:TextBox ID="text_FirstName"
                    ToolTip="Enter your first name here"
                    TextMode="SingleLine"
                    CssClass="register-input"
                    runat="server"
                    placeholder="First Name" />
            </div>
            <div class="col-sm-12 register-validator-message-container">
                <asp:RequiredFieldValidator ID="text_FirstName_RFV"
                    ControlToValidate="text_FirstName"
                    Display="Dynamic"
                    ErrorMessage="First Name is required"
                    CssClass="register-input-error"
                    runat="server" />
            </div>

            <div class="col-sm-12">
                <asp:TextBox ID="textBox_LastName"
                    ToolTip="Enter your last name here"
                    TextMode="SingleLine"
                    CssClass="register-input"
                    runat="server"
                    placeholder="Last Name" />
            </div>
            <div class="col-sm-12 register-validator-message-container">
                <asp:RequiredFieldValidator ID="textBox_LastName_RFV"
                    ControlToValidate="textBox_LastName"
                    Display="Dynamic"
                    ErrorMessage="Last Name is required"
                    CssClass="register-input-error"
                    runat="server" />
            </div>

            <div class="col-sm-12">
                <asp:TextBox ID="textBox_Email"
                    ToolTip="Enter your email here"
                    TextMode="SingleLine"
                    CssClass="register-input"
                    runat="server"
                    placeholder="Email" />
            </div>
            <div class="col-sm-12 register-validator-message-container">
                <asp:RequiredFieldValidator ID="textBox_Email_RFV"
                    ControlToValidate="textBox_Email"
                    Display="Dynamic"
                    ErrorMessage="Email is required"
                    CssClass="register-input-error"
                    runat="server" />
                <asp:RegularExpressionValidator ID="EmailTextBoxRegex_RFV"
                    ControlToValidate="textBox_Email"
                    Display="Dynamic"
                    ErrorMessage="Invalid email. You must use the pattern email@email.ca"
                    CssClass="register-input-error"
                    ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"
                    runat="server" />
            </div>

            <div class="col-sm-12">
                <asp:TextBox ID="textBox_Username"
                    ToolTip="Enter your username here"
                    TextMode="SingleLine"
                    CssClass="register-input"
                    runat="server"
                    placeholder="Username" />
            </div>
            <div class="col-sm-12 register-validator-message-container">
                <asp:RequiredFieldValidator ID="textBox_Username_RFV"
                    ControlToValidate="textBox_Username"
                    Display="Dynamic"
                    ErrorMessage="UserName is required"
                    CssClass="register-input-error"
                    runat="server" />
            </div>

            <div class="col-sm-12">
                <asp:TextBox ID="textBox_Password"
                    ToolTip="Enter a password here"
                    TextMode="Password"
                    CssClass="register-input"
                    runat="server"
                    placeholder="Password" />
            </div>
            <div class="col-sm-12 register-validator-message-container">
                <asp:RequiredFieldValidator ID="textBox_Password_RFV"
                    ControlToValidate="textBox_Password"
                    Display="Dynamic"
                    ErrorMessage="Password is required"
                    CssClass="register-input-error"
                    runat="server" />
                <asp:RegularExpressionValidator ID="textBox_PasswordRegex_RFV"
                    ControlToValidate="textBox_Password"
                    Display="Dynamic"
                    ErrorMessage="Password must contain: Minimum 8 characters atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet and 1 Number"
                    CssClass="register-input-error"
                    ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$"
                    runat="server" />
            </div>

            <div class="col-sm-12">
                <asp:TextBox ID="ConfirmPasswordTextBox"
                    ToolTip="Confirm your password here"
                    TextMode="Password"
                    CssClass="register-input"
                    runat="server"
                    placeholder="Confirm Password" />
            </div>
            <div class="col-sm-12 register-validator-message-container">
                <asp:RequiredFieldValidator ID="ConfirmPasswordTextBox_RFV"
                    ControlToValidate="ConfirmPasswordTextBox"
                    Display="Dynamic"
                    ErrorMessage="Confirm Password is required"
                    CssClass="register-input-error"
                    runat="server" />
                <asp:CompareValidator ID="ConfirmPasswordTextBoxCompare_RFV"
                    ControlToValidate="ConfirmPasswordTextBox"
                    ControlToCompare="textBox_Password"
                    ErrorMessage="No Match. Passwords must match."
                    CssClass="register-input-error"
                    runat="server" />
            </div>

            <div class="col-sm-12">
                <asp:TextBox ID="textBox_DOB"
                    ToolTip="Enter your date of birth here"
                    TextMode="SingleLine"
                    CssClass="register-input"
                    runat="server"
                    placeholder="Date of Birth" />
            </div>
            <div class="col-sm-12 register-validator-message-container">
                <asp:RequiredFieldValidator ID="textBox_DOB_RFV"
                    ControlToValidate="textBox_DOB"
                    Display="Dynamic"
                    ErrorMessage="Date of birth is required"
                    CssClass="register-input-error"
                    runat="server" />
            </div>

            <div class="col-sm-12">
                <asp:TextBox ID="textBox_Country"
                    ToolTip="Enter your country here"
                    TextMode="SingleLine"
                    CssClass="register-input"
                    runat="server"
                    placeholder="Country" />
            </div>
            <div class="col-sm-12 register-validator-message-container">
                <asp:RequiredFieldValidator ID="textBox_Country_RFV"
                    ControlToValidate="textBox_Country"
                    Display="Dynamic"
                    ErrorMessage="Country is required"
                    CssClass="register-input-error"
                    runat="server" />
            </div>   
            
            <div class="col-sm-12">
                <asp:TextBox ID="textBox_ContactNumber"
                    ToolTip="Enter your phone number here"
                    TextMode="SingleLine"
                    CssClass="register-input"
                    runat="server"
                    placeholder="Phone Number" />
            </div>
            <div class="col-sm-12 register-validator-message-container">
                <asp:RequiredFieldValidator ID="textBox_ContactNumber_RFV"
                    ControlToValidate="textBox_ContactNumber"
                    Display="Dynamic"
                    ErrorMessage="Phone Number is required"
                    CssClass="register-input-error"
                    runat="server" />
            </div>    

            <div class="col-sm-12">
                <asp:TextBox ID="textBox_AccountType"
                    ToolTip="Enter your account type here"
                    TextMode="SingleLine"
                    CssClass="register-input"
                    runat="server"
                    placeholder="Account Type" />
            </div>
            <div class="col-sm-12 register-validator-message-container">
                <asp:RequiredFieldValidator ID="textBox_AccountType_RFV"
                    ControlToValidate="textBox_AccountType"
                    Display="Dynamic"
                    ErrorMessage="Account Type is required"
                    CssClass="register-input-error"
                    runat="server" />
            </div> 

            <div class="col-sm-12">
                <asp:TextBox ID="textBox_CreditCardName"
                    ToolTip="Enter your name on your credit card here"
                    TextMode="SingleLine"
                    CssClass="register-input"
                    runat="server"
                    placeholder="Name on Credit Card" />
            </div>
            <div class="col-sm-12 register-validator-message-container">
                <asp:RequiredFieldValidator ID="textBox_CreditCardName_RFV"
                    ControlToValidate="textBox_CreditCardName"
                    Display="Dynamic"
                    ErrorMessage="Name on Credit Card is required"
                    CssClass="register-input-error"
                    runat="server" />
            </div> 

            <div class="col-sm-12">
                <asp:TextBox ID="textBox_CreditCardNumber"
                    ToolTip="Enter your credit card number here"
                    TextMode="SingleLine"
                    CssClass="register-input"
                    runat="server"
                    MaxLength="16"
                    placeholder="Credit Card Number" />
            </div>
            <div class="col-sm-12 register-validator-message-container">
                <asp:RequiredFieldValidator ID="textBox_CreditCardNumber_RFV"
                    ControlToValidate="textBox_CreditCardNumber"
                    Display="Dynamic"
                    ErrorMessage="Credit Card Number is required"
                    CssClass="register-input-error"
                    runat="server" />
            </div> 

            <div class="col-sm-12">
                <asp:TextBox ID="textBox_CreditCardExpiration"
                    ToolTip="Enter your credit card expiration date here"
                    TextMode="SingleLine"
                    CssClass="register-input"
                    runat="server"
                    MaxLength="16"
                    placeholder="Credit Card Expiration Date" />
            </div>
            <div class="col-sm-12 register-validator-message-container">
                <asp:RequiredFieldValidator ID="textBox_CreditCardExpiration_RFV"
                    ControlToValidate="textBox_CreditCardExpiration"
                    Display="Dynamic"
                    ErrorMessage="Credit Card expiration date is required"
                    CssClass="register-input-error"
                    runat="server" />
            </div>     
            
            <div class="col-sm-12">
                <asp:TextBox ID="textBox_CCV"
                    ToolTip="Enter your credit card CCV here"
                    TextMode="SingleLine"
                    CssClass="register-input"
                    runat="server"
                    MaxLength="16"
                    placeholder="Credit Card CCV" />
            </div>
             <div class="col-sm-12 register-validator-message-container">
                <asp:RequiredFieldValidator ID="textBox_CCV_RFV"
                    ControlToValidate="textBox_CCV"
                    Display="Dynamic"
                    ErrorMessage="CCV is required"
                    CssClass="register-input-error"
                    runat="server" />
            </div>   

            <div class="col-sm-12 register-button-container">
                <div class="col-sm-6">
                    <asp:Button ID="RegisterButton" Text="Register" CssClass="ub-game-button" runat="server" OnClick="RegisterButton_Click" />
                </div>
                <div class="col-sm-6">
                    <asp:Button ID="CancelButton" Text="Cancel" CssClass="ub-game-button" runat="server" OnClick="CancelButton_Click" CausesValidation="false" />
                </div>
            </div>
        </div>
        <div class="col-sm-3">&nbsp</div>
    </div>
</asp:Content>
