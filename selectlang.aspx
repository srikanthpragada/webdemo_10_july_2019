<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="selectlang.aspx.cs" Inherits="WebDemo.selectlang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h2>Select Language</h2>
    <form id="form1" runat="server">
        Language <asp:TextBox ID="txtLang" runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
    </form>
</body>
</html>
