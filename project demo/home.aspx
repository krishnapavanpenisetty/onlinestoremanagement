<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="project_demo.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



    <style type="text/css">
        .auto-style1 {
            margin-top: 0;
        }
        .auto-style2 {
            margin-top: 5;
        }
        .auto-style3 {
            width: 87px;
        }
    </style>



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
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/logout.aspx"><span class="glyphicon glyphicon-log-in"></span>Logout</asp:HyperLink>
				
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
                    <td><asp:TextBox ID="TextBox1" Class="input-lg" placeholder="search" runat="server" Width="590px" CssClass="auto-style2" Height="35px">

        </asp:TextBox></td><td class="auto-style3"><asp:Button ID="Button5" class="btn btn-primary btn-block" runat="server" OnClick="Button5_Click" Text="Search" Height="38px" Width="83px" /></td>
                </tr>
            </table>
        </center>
        </div>
        <div class="container">
	<div class="jumbotron">
		<h2>WELCOME TO THE LIFESTYLE STORE!</h2>
		<p>we have the best cameras, watches and shirts for you. No need to hunt around we have all in one place</p>
	</div>
	</div>

        <div class="container">
        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style1" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
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
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:storeConnectionString %>" SelectCommand="SELECT [productname], [Id], [producttype], [company], [price], [img] FROM [productinfo]"></asp:SqlDataSource>
    
            </div>
        
       <br>
       <footer class="nav navbar-inverse ">
			<div class="container">
			<center>
                
				<p style="color:white">Copyright © Lifestyle Store. All Rights Reserved|Contact Us: +91 90000 00000Ɖ </p>
			</center>
		</div>
		</footer>


    </form>
</body>
</html>
