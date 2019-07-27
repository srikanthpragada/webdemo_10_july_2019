<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebDemo.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
</head>
<body>
    <h1>Registration</h1>
    <form id="form1" runat="server">
       Username <br />
       <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator
            ID="RequiredFieldValidator1" 
            runat="server"
            ControlToValidate="txtUsername"
            ErrorMessage="Username is required!"></asp:RequiredFieldValidator>
       <p />  
       Mobile <br />
        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator
            ID="RegularExpressionValidator1" 
            runat="server" 
            ControlToValidate="txtMobile"
            ValidationExpression="\d{10}"
            ErrorMessage="Invalid Mobile Number!"></asp:RegularExpressionValidator>
        <p />
        Password <br />
        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
        <p />
        Confirm Password <br />
        <asp:TextBox ID="txtPassword2" TextMode="Password" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" 
            runat="server" 
            ControlToValidate="txtPassword2"
            ControlToCompare="txtPassword"
            Operator="Equal"
            ErrorMessage="Passwords mismatch!"></asp:CompareValidator>
        <p />
        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
    </form>
</body>
</html>
