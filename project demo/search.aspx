<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="project_demo.search" %>

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
       <% if (Session["email"] != null)
            { %>
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
                <asp:HyperLink ID="HyperLink6" runat="server"><span class="glyphicon glyphicon-log-in"></span>Logout</asp:HyperLink>
				
			</li>

		</ul>
	</div>
	</div>
	</nav>
        <%}
            else
            { %>
        <nav class="navbar navbar-inverse  navbar-fixed-top">
            <div class="container">
	        <div class="navbar-header">
        <asp:HyperLink class="navbar-brand" ID="HyperLink7" runat="server" NavigateUrl="~/home.aspx">Lifecycle Store</asp:HyperLink>
		
	</div>
                <div>
		<ul class="nav navbar-nav navbar-right">
            <li>
                <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl=""><span class="glyphicon glyphicon-shopping-cart"></span>ABOUT US</asp:HyperLink>

			</li>
			<li>
                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/home.aspx" ><span class="glyphicon glyphicon-shopping-cart"></span>Products</asp:HyperLink>

			</li>
			
            <li>
                <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/signup.aspx"><span class="glyphicon glyphicon-user"></span>Sign Up</asp:HyperLink>
				
			</li>
			<li>
                <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/login.aspx"><span class="glyphicon glyphicon-log-in"></span>Log in</asp:HyperLink>
				
			</li>
            
		</ul>
	</div>
	</div>
	
        </nav>
        <%} %>
       <br><br><br>
        <br>
        <div class="container">
            <center>
            <table>
                <tr>
                    <td><asp:TextBox ID="TextBox1" Class="input-lg" runat="server" Width="590px" CssClass="auto-style2" Height="35px">

        </asp:TextBox></td><td class="auto-style3"><asp:Button ID="Button5" class="btn btn-primary btn-block" runat="server" OnClick="Button5_Click" Text="Search" Height="38px" Width="83px" /></td>
                </tr>
            </table>
        </center>
        </div>
        
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
         
           
                
                <table class="nav-justified">
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"~/viewdetails.aspx?id="+Eval("Id") %>'>
                            <asp:Image ID="Image1" class="thumbnail image-responsive" ImageUrl='<%# getimage(Eval("Id").ToString()) %>' runat="server" Height="200px" Width="300px" />
                      </asp:HyperLink>
                           
                        </td>
                    </tr>
                    <tr>
                        
                        <td>
                          
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/viewdetails.aspx?id="+Eval("Id") %>'>
                            <asp:Label ID="productnameLabel" runat="server" Text='<%# Eval("productname") %>' Font-Bold="True" Font-Italic="False" Width="400px"/>
                        </asp:HyperLink></td></tr><tr>
                        <td>
                            <b>By</b> <asp:Label ID="companyLabel" runat="server" Font-Bold="True" Width="400px" Text='<%# Eval("company") %>' />
                        </td>
                    </tr>
                    <tr>
                        
                        
                        <td>
                            <table>
                                <tr>
                                    <td>
                                    <b>Rs:</b> </td><td>
                                         <asp:Label ID="priceLabel" runat="server" Font-Bold="True" Width="400px" Text='<%# Eval("price") %>' />

                                    </td>
                                </tr>
                            </table>
                                                    </td>
                    </tr>
                    <tr>
                        
                        <td>
                           
                           <asp:Button ID="Button4" runat="server" class="btn btn-primary btn-block"  Width="398px" CommandArgument='<%#Eval("id") %>' CommandName="addtocart" OnClick="Button4_Click1" Text=' <%# getbutton(Eval("id").ToString()) %>' />
                          
                        </td>


                    </tr></table>
           
       
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:storeConnectionString %>" SelectCommand="SELECT * FROM [productinfo] WHERE (([company] LIKE '%' + @company + '%') OR ([productname] LIKE '%' + @productname + '%'))">
            <SelectParameters>
                <asp:QueryStringParameter Name="company" QueryStringField="search" Type="String" />
                <asp:QueryStringParameter Name="productname" QueryStringField="search" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
