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
        <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
        <p></p>
        Target Currency<br />
        <asp:DropDownList ID="ddlCurrency" runat="server">
            <asp:ListItem Text="USD" Value="70" />
            <asp:ListItem Text="Euro" Value="80" />
            <asp:ListItem Text="SND" Value="50" />
        </asp:DropDownList>
        <p />
        <asp:Button ID="btnConvert" runat="server" Text="Convert" OnClick="btnConvert_Click" />
        <p></p>
        <asp:Label ID="lblUSD" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
