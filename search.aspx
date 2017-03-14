<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">


    Protected Sub Button1_Click(sender As Object, e As System.EventArgs)
        
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-family: cursive;
        }
        .style2
        {
            font-family: cursive;
            font-size: 20pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="style2"><strong>請輸入要查詢學生的學號：</strong></span><asp:TextBox 
            ID="TextBox1" runat="server" CssClass="style1"></asp:TextBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True" 
            ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT * FROM [Member] WHERE ([sId] = @sId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DefaultValue="0" Name="sId" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br class="style1" />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" 
            CssClass="style1" />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" PageSize="5" CssClass="style1">
            <Columns>
                <asp:BoundField DataField="pId" HeaderText="pId" 
                    SortExpression="pId" />
                <asp:BoundField DataField="sId" HeaderText="sId" SortExpression="sId" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="birthday" HeaderText="birthday" 
                    SortExpression="birthday" />
            </Columns>
        </asp:GridView>
        <br class="style1" />
        <span class="style2"><strong>請輸入要查詢餐廳之名稱：</strong></span><asp:TextBox 
            ID="TextBox2" runat="server" CssClass="style1"></asp:TextBox>
        <br class="style1" />
        <asp:Button ID="Button2" runat="server" Text="Search" CssClass="style1" />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True" 
            ProviderName="System.Data.SqlClient" 
            
            SelectCommand="SELECT * FROM [Resturant] WHERE ([rName] LIKE '%' + @rName + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" DefaultValue="0" Name="rName" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="rId" 
            DataSourceID="SqlDataSource2" PageSize="5" CssClass="style1">
            <Columns>
                <asp:BoundField DataField="rId" HeaderText="rId" ReadOnly="True" 
                    SortExpression="rId" />
                <asp:BoundField DataField="rName" HeaderText="rName" SortExpression="rName" />
            </Columns>
        </asp:GridView>
        <br class="style1" />
        <br />
    
    </div>
    </form>
</body>
</html>
