<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productdetails.aspx.cs" Inherits="project_demo.productdetails" %>

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
            margin-right: 0px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 226px;
        }
        .auto-style4 {
            width: 367px;
        }
        .auto-style5 {
            margin-left: 520px;
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
     <br><br><br>
        <center>

        <table><tr><td class="auto-style4">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">ID</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">ProductName</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="276px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">ProductType</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="279px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Company</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="280px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Description</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="279px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Price</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="277px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Stock</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Width="276px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
            </td> 
            
            <td class="auto-style3">
                <asp:Image ID="Image2" runat="server" width="227px"/><br>
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
               </tr>
           
        </table>
            <table>
                 <tr><td><asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" class="btn btn-primary btn-block"></asp:Button>

                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Delete" class="btn btn-primary btn-block" OnClick="Button4_Click"></asp:Button>
                </td>
                     <td>
                    <asp:Button ID="Button1" runat="server" Text="View" OnClick="Button1_Click" class="btn btn-primary btn-block"></asp:Button>
                </td>
            </tr>
            </table>
        </center>
        <br />
        <div class="auto-style5">
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </div>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowUpdating="getupdate">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="productname" HeaderText="productname" SortExpression="productname" />
                <asp:BoundField DataField="producttype" HeaderText="producttype" SortExpression="producttype" />
                <asp:BoundField DataField="company" HeaderText="company" SortExpression="company" />
                <asp:BoundField DataField="des" HeaderText="des" SortExpression="des" />
                
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="stock" HeaderText="stock" SortExpression="stock" />
                <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="img" SortExpression="img">
                    <EditItemTemplate>
                       
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Width="100px" ImageUrl='<%# getimage(Eval("Id").ToString()) %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:storeConnectionString %>" SelectCommand="SELECT * FROM [productinfo]"></asp:SqlDataSource>
        <div>
        </div>
    </form>
</body>
</html>
