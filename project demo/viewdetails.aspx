<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewdetails.aspx.cs" Inherits="project_demo.viewdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 111px;
            height: 167px;
        }
        
        .auto-style5 {
            width: 444%;
        }
        .auto-style7 {
            width: 49%;
        }
                
        .auto-style8 {
            width: 279px;
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
       
        <div>
           
            <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4">
                               
                               
                               
                                
                             <asp:Image ID="Image1" runat="server" ImageUrl='<%# getimage(Eval("Id").ToString()) %>' Height="500px" Width="500px" />  
                            

                            </td>
                            <td class="auto-style5">
                              
                                            <asp:Label ID="productnameLabel" runat="server" Text='<%# Eval("productname") %>' Font-Bold="True" Font-Size="Large" />
                                      <br />
                                            <asp:Label ID="companyLabel" runat="server" Text='<%# Eval("company") %>' Font-Bold="True" Font-Size="Medium" ForeColor="#33CCFF" />
                                <br />        
                                            Price:&#8377
                                            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' Font-Bold="True" Font-Size="X-Large" ForeColor="Black" />
                                <br />
                                            description:
                                            <br />
                                            <asp:Label ID="desLabel" runat="server" Text='<%# Eval("des") %>' Font-Size="Medium" />
                                       
                            </td>
                        </tr>
               
                        
                    </table>
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:storeConnectionString %>" SelectCommand="SELECT * FROM [productinfo] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            

                   
        </div>
         <table class="auto-style7">
              <% if (getbotton() > 0)
                  {  %>
             <tr>
                                        <td class="auto-style8">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label1" runat="server" Text="QUANTITY:"></asp:Label>   
                                            &nbsp;</td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>

                                            </asp:DropDownList>
                                            
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                                            
                                            </td>
                                    </tr>
                                    <tr>
                                       
                                        <td class="auto-style8">
                                            
                                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add to cart" class="btn btn-primary btn-block" />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Buy Now" class="btn btn-primary btn-block" />
                                        </td>
                                       
                                    </tr>
              <%}
                                    else
                                    { %>
             <tr>
                <td class="auto-style8"> <asp:Label ID="Label3" runat="server" Text="Out Of Stock" Font-Bold="True" Font-Size="Larger" ForeColor="Red"></asp:Label>
                    <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
                 </td>
             </tr><%} %>
              </table>
                              
        <table>
            <tr>
                <asp:Label ID="Label5" runat="server" Text="Label">

                </asp:Label>
            </tr>
            <tr>
                <td> <asp:Label ID="Label6" runat="server" Text="Set Price" Font-Bold="True" Font-Size="14pt"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="120px"></asp:TextBox></td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Set" class="btn btn-primary btn-block" OnClick="Button3_Click" />

                </td>
            </tr>
        </table>

        <br /><br /><br />
         <footer class="nav navbar-inverse navbar-fixed-bottom">
			<div class="container">
			<center>
                
				<p style="color:white">Copyright © Lifestyle Store. All Rights Reserved|Contact Us: +91 90000 00000Ɖ </p>
			</center>
		</div>
		</footer>
    </form>
</body>
</html>
