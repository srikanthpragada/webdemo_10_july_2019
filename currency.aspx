<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="currency.aspx.cs" Inherits="WebDemo.currency" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Currency Conversion</title>
</head>
<body>
    <h2>Convert INR to USD</h2>
    <form id="form1" runat="server">
    Amount in INR<br />
    <asp:TextBox ID="txtAmount"  runat="server"></asp:TextBox>
    <p></p>
    <asp:Button ID="btnConvert" runat="server" Text="Convert" OnClick="btnConvert_Click" />
    <p></p>
    <asp:Label ID="lblUSD" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
