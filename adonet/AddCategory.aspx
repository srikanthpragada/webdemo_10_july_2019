<%@ Page Language="C#" Trace="true" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="WebDemo.adonet.AddCategory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Add Category</h2>
        Category Code <br />
        <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
        <p />
        Category Description <br />
        <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="btnAdd" runat="server" Text="Add Category" OnClick="btnAdd_Click" />
        <p />
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
