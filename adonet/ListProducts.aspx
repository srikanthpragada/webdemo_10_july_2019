<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListProducts.aspx.cs" Inherits="WebDemo.adonet.ListProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" 
            SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
            DataKeyNames="prodid" DataSourceID="SqlDataSource1" Width="100%" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="prodid" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="prodid" />
                <asp:BoundField DataField="prodname" HeaderText="Name" SortExpression="prodname" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                <asp:BoundField DataField="qoh" HeaderText="Qoh" SortExpression="qoh" />
                <asp:BoundField DataField="remarks" HeaderText="Remarks" SortExpression="remarks" />
                <asp:BoundField DataField="catcode" HeaderText="Category" SortExpression="catcode" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
