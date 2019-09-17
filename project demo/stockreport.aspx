<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stockreport.aspx.cs" Inherits="project_demo.stockreport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-inverse  navbar-fixed-top">
		<div class="container">
	<div class="navbar-header">
        <asp:HyperLink class="navbar-brand" ID="HyperLink3" runat="server" NavigateUrl="~/adminhome.aspx">Lifecycle Store</asp:HyperLink>
		
	</div>
	<div>
		<ul class="nav navbar-nav navbar-right">
			<li>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/addproduct.aspx" >ADD Products</asp:HyperLink>

			</li> 
            <li>
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/addproducttype.aspx" >ADD Products type</asp:HyperLink>

			</li>
            <li>
                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/addcompany.aspx" >ADD Company</asp:HyperLink>

			</li>
			<li>
		<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/productdetails.aspx"> Product Details</asp:HyperLink>

			
			</li>
            <li>
		<asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/stockreport.aspx"> Out Of Stock</asp:HyperLink>

			
			</li>
             <li>
		<asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/soldedaspx.aspx">Sold items</asp:HyperLink>

			
			</li>
             <li>
		<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/solditem.aspx">Status Update </asp:HyperLink>

			
			</li>
            <li>
		<asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/userdetails.aspx"> User Details </asp:HyperLink>

			
			</li>
           
			<li>
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/logout.aspx">Logout</asp:HyperLink>
				
			</li>

		</ul>
	</div>
	</div>
	</nav>
      <br/><br/><br />
      <center>
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Stock Report"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="237px" Width="1319px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="productname" HeaderText="productname" ReadOnly="True" SortExpression="productname" />
                    <asp:BoundField DataField="producttype" HeaderText="producttype" ReadOnly="True" SortExpression="producttype" />
                    <asp:BoundField DataField="company" HeaderText="company" ReadOnly="True" SortExpression="company" />
                    <asp:BoundField DataField="price" HeaderText="price" ReadOnly="True" SortExpression="price" />
                    <asp:BoundField DataField="stock" HeaderText="stock"  SortExpression="stock" />
                    <asp:CommandField EditText="ADD" ShowEditButton="True" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:storeConnectionString %>" SelectCommand="SELECT [Id], [productname], [producttype], [company], [price], [stock] FROM [productinfo] WHERE ([stock] &lt;= @stock) ORDER BY [stock]" UpdateCommand="UPDATE [productinfo] SET [stock]=@stock WHERE [Id]=@Id">
                <SelectParameters>
                    <asp:Parameter DefaultValue="0" Name="stock" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
          </center>
    </form>
</body>
</html>
