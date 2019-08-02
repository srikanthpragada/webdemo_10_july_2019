<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductByCat.aspx.cs" Inherits="WebDemo.adonet.ProductByCat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products By Category</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Products By Category</h2>
        Category : <asp:DropDownList ID="ddlCategory" runat="server"
            DataSourceID="sdsCategories" 
            AutoPostBack="true"
            DataTextField="catdesc" 
            DataValueField="catcode"></asp:DropDownList>
        <asp:SqlDataSource ID="sdsCategories" runat="server" 
            ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>"
            SelectCommand="SELECT * FROM [categories]"></asp:SqlDataSource>
        <p></p>
        <asp:GridView ID="GridView1" runat="server" 
            DataSourceID="sdsProducts"></asp:GridView>
        <asp:SqlDataSource ID="sdsProducts" runat="server"
            ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" 
            SelectCommand="SELECT * FROM [products] WHERE ([catcode] = @catcode)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlCategory"
                    Name="catcode" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
