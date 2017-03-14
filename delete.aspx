<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs)
        SqlDataSource1.DeleteCommand = "delete from [Member] where name=" & "'" & DropDownList1.SelectedValue & "'"
        SqlDataSource1.Delete()
        Label1.Text = "資料已刪除"
        GridView1.DataBind()
        DropDownList1.DataBind()
    End Sub


</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: 40pt;
            font-weight: bold;
            font-family: cursive;
        }
        .style2
        {
            font-family: cursive;
        }
        .style5
        {
            font-family: cursive;
            font-size: 20pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        刪除會員資料</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True" 
        ProviderName="System.Data.SqlClient" 
        SelectCommand="SELECT * FROM [Member]" 
        
        InsertCommand="INSERT INTO [Member] ([pId], [sId], [name], [phone], [birthday]) VALUES (@pId, @sId, @name, @phone, @birthday)">
        <InsertParameters>
            <asp:Parameter Name="pId" Type="String" />
            <asp:Parameter Name="sId" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="birthday" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CssClass="style2" DataSourceID="SqlDataSource1" 
        AllowPaging="True" AllowSorting="True" PageSize="5">
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
    <span class="style5"><strong>選擇一個名稱，並刪除她的資料</strong></span><br 
        class="style2" />
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" 
        CssClass="style2">
    </asp:DropDownList>
    <br class="style2" />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Delete" 
        CssClass="style2" />
    <br class="style2" />
    <asp:Label ID="Label1" runat="server" CssClass="style2"></asp:Label>
    <br class="style2" />
    <br class="style2" />
    </form>
</body>
</html>
