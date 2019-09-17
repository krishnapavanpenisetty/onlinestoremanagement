<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="soldedaspx.aspx.cs" Inherits="project_demo.soldedaspx" %>

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
        <div>
        </div>
        <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="3" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="853px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="productname" HeaderText="productname" SortExpression="productname" />
                <asp:BoundField DataField="producttype" HeaderText="producttype" SortExpression="producttype" />
                <asp:BoundField DataField="modelid" HeaderText="modelid" SortExpression="modelid" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="quality" HeaderText="quality" SortExpression="quality" />
                <asp:BoundField DataField="company" HeaderText="company" SortExpression="company" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                <asp:BoundField DataField="tid" HeaderText="tid" SortExpression="tid" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:storeConnectionString %>" SelectCommand="SELECT * FROM [solditems] WHERE ([status] LIKE '%' + @status + '%')">
            <SelectParameters>
                <asp:Parameter DefaultValue="delivered" Name="status" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
            </center>
    </form>
</body>
</html>
