<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tripcost.aspx.cs" Inherits="WebDemo.tripcost" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trip Cost Calculator</title>
</head>
<body>
    <h2>Trip Cost Calculator</h2>
    <form id="form1" runat="server">
        Total KM <br />
        <asp:TextBox ID="txtTotalKM" TextMode="Number" runat="server"></asp:TextBox>
        <p></p>
        KM per leter <br />
        <asp:TextBox ID="txtKMPerLeter" TextMode="Number" runat="server"></asp:TextBox>
        <p></p>
        Fuel  
        <asp:RadioButton ID="rbPetrol" runat="server" GroupName="fuel" 
             Text="Petrol"  Checked="true" />
        <asp:RadioButton ID="rbDiesel" runat="server" GroupName="fuel"
            Text="Diesel" />
        <p></p>
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate"
             OnClick="btnCalculate_Click" />
        <p />
        <asp:Label Font-Size="20pt"  ID="lblCost" runat="server" Font-Bold="True" ForeColor="#3366FF"></asp:Label>
    </form>
</body>
</html>
