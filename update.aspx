<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: 40pt;
        }
        .style2
        {
            font-family: cursive;
        }
        .style3
        {
            font-size: 40pt;
            font-family: cursive;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="style1"><span class="style2"><strong>編輯會員資料</strong></span><asp:SqlDataSource 
            ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True" 
            InsertCommand="INSERT INTO [Member] ([pId], [sId], [name], [phone], [birthday]) VALUES (@pId, @sId, @name, @phone, @birthday)" 
            ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT * FROM [Member]">
            <InsertParameters>
                <asp:Parameter Name="pId" Type="String" />
                <asp:Parameter Name="sId" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter DbType="Date" Name="birthday" />
            </InsertParameters>
        </asp:SqlDataSource>
        </span>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CssClass="style2" 
            DataKeyNames="pId" DataSourceID="SqlDataSource1" PageSize="5">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="pId" HeaderText="pId" ReadOnly="True" 
                    SortExpression="pId" />
                <asp:BoundField DataField="sId" HeaderText="sId" SortExpression="sId" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="birthday" HeaderText="birthday" 
                    SortExpression="birthday" DataFormatString="{0:d}" />
            </Columns>
        </asp:GridView>
        <span class="style3"><strong>編輯食物資料</strong></span><asp:SqlDataSource 
            ID="SqlDataSource2" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True" 
            InsertCommand="INSERT INTO [Food] ([foodNumber], [rId], [foodname], [foodstate], [price]) VALUES (@foodNumber, @rId, @foodname, @foodstate, @price)" 
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Food]">
            <InsertParameters>
                <asp:Parameter Name="foodNumber" Type="String" />
                <asp:Parameter Name="rId" Type="String" />
                <asp:Parameter Name="foodname" Type="String" />
                <asp:Parameter Name="foodstate" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CssClass="style2" 
            DataKeyNames="foodNumber" DataSourceID="SqlDataSource2" PageSize="5">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="foodNumber" HeaderText="foodNumber" ReadOnly="True" 
                    SortExpression="foodNumber" />
                <asp:BoundField DataField="rId" HeaderText="rId" SortExpression="rId" />
                <asp:BoundField DataField="foodname" HeaderText="foodname" 
                    SortExpression="foodname" />
                <asp:BoundField DataField="foodstate" HeaderText="foodstate" 
                    SortExpression="foodstate" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            </Columns>
        </asp:GridView>
        <span class="style3"><strong>編輯餐廳資料 </strong></span><asp:SqlDataSource 
            ID="SqlDataSource3" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True" 
            ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT * FROM [Resturant]">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CssClass="style2" 
            DataKeyNames="rId" DataSourceID="SqlDataSource3" PageSize="5">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="rId" HeaderText="rId" ReadOnly="True" 
                    SortExpression="rId" />
                <asp:BoundField DataField="rName" HeaderText="rName" SortExpression="rName" />
            </Columns>
        </asp:GridView>
        <br />
    
    </div>
    </form>
</body>
</html>
