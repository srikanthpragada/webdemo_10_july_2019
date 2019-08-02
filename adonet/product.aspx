<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="WebDemo.product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Product Information</h2>
        <asp:SqlDataSource ID="sdsProduct" runat="server" 
            ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" 
            SelectCommand="SELECT * FROM [products] WHERE ([prodid] = @prodid)">
            <SelectParameters>
                <asp:QueryStringParameter Name="prodid" 
                    QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:DetailsView ID="DetailsView1" runat="server" 
            DataSourceID="sdsProduct"></asp:DetailsView>
    </form>
</body>
</html>
