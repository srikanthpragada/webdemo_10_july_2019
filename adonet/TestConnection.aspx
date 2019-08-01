<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestConnection.aspx.cs" Inherits="WebDemo.TestConnection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="btnTest" runat="server" Text="Test Connection" OnClick="btnTest_Click" />
        <p />
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
