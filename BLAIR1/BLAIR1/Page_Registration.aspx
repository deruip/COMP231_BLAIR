<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page_Registration.aspx.cs" Inherits="Page_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BLAIR - Register an account</title>
</head>
<body>
    <form id="form1" runat="server">
       <div class="RegisterForm" style="font-family:Arial; " >
            
            <asp:Label ID="page_FirstParagraph" runat="server" Text="Please fill the following form: " />
            <br />                


            <asp:Label ID="text_ID" runat="server" Text="ID: " />
            <asp:TextBox ID="textBox_ID" runat="server" />
            <br />
            
            <asp:Label ID="text_Username" runat="server" Text="Username: " />
            <asp:TextBox ID="textBox_Username" runat="server" />
            <br />

            <asp:Label ID="text_Password" runat="server" Text="Password: "  />
            <asp:TextBox ID="textBox_Password" runat="server" TextMode="Password"/>
            <br />

            <asp:Label ID="text_LastName" runat="server" Text="Last Name: " />
            <asp:TextBox ID="textBox_LastName" runat="server" />
            <br />
           
            <asp:Label ID="text_FirstName" runat="server" Text="First Name: "/>
            <asp:TextBox ID="textBox1" runat="server" />
            <br />

            <asp:Label ID="text_DOB" runat="server" Text="Date of Birth: " />            
            <asp:TextBox ID="textBox_DOB" runat="server" />
            <br />

            <asp:Label ID="text_Country" runat="server" Text="Country: " />
            <asp:TextBox ID="textBox_Country" runat="server" />                        
            <br />

            <asp:Label ID="text_ContactNumber" runat="server" Text="Contact Number: "/> <!-- change to 'phone' incase of confusion to database -->
            <asp:TextBox ID="textBox_ContactNumber" runat="server" />
            <br />

            <asp:Label ID="text_EmailAddress" runat="server" Text="Email: " />
            <asp:TextBox ID="textBox_Email" runat="server" />
            <br />

            <asp:Label ID="text_AccountType" runat="server" Text="Account Type: " />
            <asp:TextBox ID="textBox_AccountType" runat="server" />
            <br />

            <asp:Label ID="text_CreditCardName" runat="server" Text="Credit Card Name(type as is): " />
            <asp:TextBox ID="textBox_CreditCardName" runat="server" MaxLength="16" />
            <br />

            <asp:Label ID="text_CreditCardNumber" runat="server" Text="Credit Card Number: " />
            <asp:TextBox ID="textBox_CreditCardNumber" runat="server" />
            <br />

            <asp:Label ID="text_CreditCardExpiration" runat="server" Text="Credit Card Expiration Date: " />
            <asp:TextBox ID="textBox_CreditCardExpiration" runat="server" />
            

            <asp:Label ID="text_CreditCardCCV" runat="server" Text="CCV: " />
            <asp:TextBox ID="textBox_CCV" runat="server" MaxLength="3" Width="35"/>
            <br />

            <asp:Button ID="btn_Register" runat="server" Text="Register" OnClick="ButtonRegisterListener" />
        </div>
    </form>
</body>
</html>
