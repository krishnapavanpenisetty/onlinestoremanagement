<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addproduct.aspx.cs" Inherits="project_demo.addproduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <style type="text/css">
        .auto-style2 {
            width: 68%;
            height: 267px;
            margin-right: 0px;
        }
        .auto-style3 {
            width: 410px;
        }
        .auto-style5 {
            width: 99%;
            height: 278px;
            margin-right: 63px;
        }
        .auto-style6 {
            width: 384px;
        }
        .auto-style7 {
            width: 646px;
        }
        .auto-style8 {
            margin-right: 76px;
        }
    </style>
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
        <table class="auto-style2">
            <tr>
                <td class="auto-style6">
                    <table class="auto-style5">
                        <tr>
                            <td>product name</td>
                            <td class="auto-style3">&nbsp;
                                <asp:TextBox ID="TextBox1" runat="server" Width="245px"></asp:TextBox>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>product type</td>
                            <td class="auto-style3">
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="producttype" DataValueField="producttype">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:storeConnectionString %>" SelectCommand="SELECT [producttype] FROM [producttype]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td>company</td>
                            <td class="auto-style3">
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="companyname" DataValueField="companyname">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:storeConnectionString %>" SelectCommand="SELECT [companyname] FROM [company]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td>description</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox2" runat="server" Width="245px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>price</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox3" runat="server" Width="245px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>stock</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox4" runat="server" Width="245px"></asp:TextBox>
                            </td>
                        </tr>
                        </table>
                </td>
                <td>
                    <asp:Image ID="Image1" runat="server" BorderStyle="Solid" CssClass="auto-style8" Height="250px" Width="250px" />
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                
            </tr>
            <tr>
                <td class="auto-style6" colspan="2">
               <center class="auto-style7"> <asp:Button ID="Button1" runat="server" Text="ADD" Width="133px" OnClick="Button1_Click" class="btn btn-primary btn-block"/>
                  <br> <asp:Label ID="Label1" runat="server"></asp:Label>
                   </center>

                </td>
            </tr>
        </table>
       </center>


    </form>
</body>
</html>
