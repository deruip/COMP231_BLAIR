<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!--Login -->
            <asp:Label ID="text_login" Text="Username: " runat="server" />
            <asp:TextBox ID="textBox_login" runat="server" TabIndex="1"/>

            <br />
            <!--Password -->
            <asp:Label ID="text_password" Text="Password: " runat="server" />
            <asp:TextBox ID="textBox_password" runat="server" TabIndex="2" />

            <br />
            <!-- Register for account link -->
             <asp:LinkButton ID="text_Register" Text="No Account? Register Here" runat="server" OnClick="ToRegisterPage"/>


            
            
        </div>
    </form>
</body>
</html>
