<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Myorders.aspx.cs" Inherits="project_demo.Myorders" %>

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
        <asp:HyperLink class="navbar-brand" ID="HyperLink3" runat="server" NavigateUrl="~/home.aspx">Lifecycle Store</asp:HyperLink>
		
	</div>
	<div>
		<ul class="nav navbar-nav navbar-right">
			<li>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/cart.aspx?id=" ><span class="glyphicon glyphicon-shopping-cart"></span>Product Cart</asp:HyperLink>

			</li>                                                   
			<li>
		<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/changepassword.aspx"><span class="glyphicon glyphicon-user"></span> Settings</asp:HyperLink>

			
			</li>
            <li>
		<asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/Myorders.aspx"><span class="glyphicon glyphicon-user"></span> Myorders</asp:HyperLink>

			
			</li>
             <li>
		<asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/profile.aspx"><span class="glyphicon glyphicon-user"></span> Myprofile</asp:HyperLink>

			
			</li>
			<li>
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/logout.aspx"><span class="glyphicon glyphicon-log-in"></span>Logout</asp:HyperLink>
				
			</li>

		</ul>
	</div>
	</div>
	</nav>
        <div>
            <asp:Label ID="Label1" runat="server" Text="My Orders"></asp:Label>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:storeConnectionString %>" SelectCommand="SELECT * FROM [solditems] WHERE ([email] = @email)">
                <SelectParameters>
                    <asp:SessionParameter Name="email" SessionField="email" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
