<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Member 會員資料<br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True" 
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Member]">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" 
            >
            <Columns>
                <asp:BoundField DataField="pId" HeaderText="pId" SortExpression="pId" />
                <asp:BoundField DataField="sId" HeaderText="sId" SortExpression="sId" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="birthday" HeaderText="birthday" 
                    SortExpression="birthday" />
            </Columns>
        </asp:GridView>
        <br />
        Food 食物資料<br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True" 
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Food]">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="foodNumber" HeaderText="foodNumber" 
                    SortExpression="foodNumber" />
                <asp:BoundField DataField="rId" HeaderText="rId" SortExpression="rId" />
                <asp:BoundField DataField="foodname" HeaderText="foodname" 
                    SortExpression="foodname" />
                <asp:BoundField DataField="foodstate" HeaderText="foodstate" 
                    SortExpression="foodstate" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            </Columns>
        </asp:GridView>
        <br />
        Resturant&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 餐廳資料<br />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True" 
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Resturant]">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="rId" HeaderText="rId" SortExpression="rId" />
                <asp:BoundField DataField="rName" HeaderText="rName" SortExpression="rName" />
            </Columns>
        </asp:GridView>
        <br />
        Order&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 點餐資料<br />
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True" 
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Order]">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource4">
            <Columns>
                <asp:BoundField DataField="oId" HeaderText="oId" SortExpression="oId" />
                <asp:BoundField DataField="foodnumber" HeaderText="foodnumber" 
                    SortExpression="foodnumber" />
            </Columns>
        </asp:GridView>
        <br />
        Search 搜尋<br />
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True" 
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Search]">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource5">
            <Columns>
                <asp:BoundField DataField="sId" HeaderText="sId" SortExpression="sId" />
                <asp:BoundField DataField="rId" HeaderText="rId" SortExpression="rId" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
