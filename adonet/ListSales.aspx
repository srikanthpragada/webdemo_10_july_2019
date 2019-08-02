<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListSales.aspx.cs" Inherits="WebDemo.adonet.ListSales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Sales</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="invno" DataSourceID="sdsSales" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="invno" HeaderText="invno" InsertVisible="False" ReadOnly="True" SortExpression="invno" />
                <asp:HyperLinkField DataNavigateUrlFields="prodid" 
                    DataNavigateUrlFormatString="product.aspx?id={0}" 
                    DataTextField="prodid" HeaderText="Product" />
                <asp:BoundField DataField="transdate" HeaderText="transdate" SortExpression="transdate" />
                <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sdsSales" runat="server" 
            ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" 
            SelectCommand="SELECT * FROM [sales]"></asp:SqlDataSource>
    </form>
</body>
</html>
