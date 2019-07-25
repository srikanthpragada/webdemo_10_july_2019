<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="feefinder.aspx.cs" Inherits="WebDemo.feefinder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fee Finder</title>
</head>
<body>
    <h2>Course Fee Finder</h2>
    <form id="form1" runat="server">
        Course 
    <asp:DropDownList ID="ddlCourse" runat="server">
        <asp:ListItem Value="4000">Java SE</asp:ListItem>
        <asp:ListItem Value="4500">Java EE</asp:ListItem>
        <asp:ListItem Value="5500">Microsoft.Net</asp:ListItem>
        <asp:ListItem Value="1500">Angular</asp:ListItem>
    </asp:DropDownList>
        <p></p>
        Type
        <asp:RadioButton ID="rbClassroom" Checked="true" runat="server"
            AutoPostBack="true" GroupName="type" Text="Classroom" OnCheckedChanged="rbClassroom_CheckedChanged" />
        <asp:RadioButton ID="rbOnline" Text="Online" runat="server"
            AutoPostBack="true"
            GroupName="type" OnCheckedChanged="rbOnline_CheckedChanged" />
        <p></p>
        <asp:CheckBox ID="chkOldStudent" runat="server" Text="Old Student" />
        <p></p>
        <asp:CheckBox ID="chkMaterial" runat="server" Text="Hardcopy of Course Material" />
        <p></p>
        <asp:Button ID="btnFind" runat="server" Text="Find Fee" OnClick="btnFind_Click" />
        <p></p>
        <asp:Label ID="lblFee" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
