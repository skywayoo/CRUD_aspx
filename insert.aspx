<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs)
        SqlDataSource1.InsertCommand = "insert into [Member] values (" _
                & "'" & TextBox1.Text & "'," & "'" & TextBox2.Text & "'," _
                & "'" & TextBox3.Text & "'," & "'" & TextBox4.Text & "'," & "'" & TextBox5.Text & "'" & ")"
        SqlDataSource1.Insert()
        Label1.Text = "資料輸入完成"
        GridView1.DataBind()
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-family: cursive;
            font-size: 40pt;
        }
        .style2
        {
            width: 519px;
            height: 766px;
            z-index: 1;
            left: 669px;
            top: 40px;
            position: absolute;
            font-family: cursive;
        }
        .style3
        {
            font-family: cursive;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="style1"><strong>Member adds data<br />
        </strong>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True" 
            ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT * FROM [Member]">
        </asp:SqlDataSource>
        </span>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" CssClass="style3">
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
        <br class="style3" />
        <span class="style3">pId:</span><asp:TextBox ID="TextBox1" runat="server" 
            CssClass="style3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
            CssClass="style3">不可空白</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="RegularExpressionValidator" 
            ValidationExpression="[A-Z]\d{9}" CssClass="style3">請輸入身分證字號</asp:RegularExpressionValidator>
        <br class="style3" />
        <span class="style3">sId:</span><asp:TextBox ID="TextBox2" runat="server" 
            CssClass="style3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" 
            CssClass="style3">不可空白</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator" 
            ValidationExpression="\d{6,7}" CssClass="style3">請輸入 學號</asp:RegularExpressionValidator>
        <br class="style3" />
        <span class="style3">name:</span><asp:TextBox ID="TextBox3" runat="server" 
            CssClass="style3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" 
            CssClass="style3">不可空白</asp:RequiredFieldValidator>
        <br class="style3" />
        <span class="style3">phone:</span><asp:TextBox ID="TextBox4" runat="server" 
            CssClass="style3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" 
            CssClass="style3">不可空白</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="RegularExpressionValidator" 
            ValidationExpression="\d{5,12}" CssClass="style3">請輸入電話號碼</asp:RegularExpressionValidator>
        <br class="style3" />
        <span class="style3">birthday:</span><asp:TextBox ID="TextBox5" runat="server" 
            CssClass="style3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator" 
            CssClass="style3">不可空白</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="RegularExpressionValidator" 
            ValidationExpression="\d{4}[/]\d{1,2}[/]\d{1,2}" CssClass="style3">ex: 1993/6/22</asp:RegularExpressionValidator>
        <br class="style3" />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" 
            CssClass="style3" />
        <br class="style3" />
        <asp:Label ID="Label1" runat="server" CssClass="style3"></asp:Label>
        <br class="style3" />
        <br class="style3" />
        <br class="style3" />
        <br class="style3" />
        <br class="style3" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
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
