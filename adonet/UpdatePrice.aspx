<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePrice.aspx.cs" Inherits="WebDemo.adonet.UpdatePrice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Price</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Update Price</h2>
        Product Id <br />
        <asp:TextBox ID="txtId" TextMode="Number" runat="server"></asp:TextBox>
        <p />
        New Price <br />
        <asp:TextBox ID="txtPrice" TextMode="Number" runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="btnUpdate" runat="server" Text="Update Price" OnClick="btnUpdate_Click" />
        <p />
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
