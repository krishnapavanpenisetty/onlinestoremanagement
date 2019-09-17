<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userdetails.aspx.cs" Inherits="project_demo.userdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    ead> <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <center>
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
            <table><tr><td class="auto-style4">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">ID</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Name</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="276px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Contact</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="280px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Address</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="279px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">City</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="277px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Pincode</td>
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
                <asp:Image ID="Image2" runat="server" width="100px"/><br>
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
               </tr>
           
        </table>
            <table>
                 <tr><td><asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click"></asp:Button>

                </td>
                <td>
                    &nbsp;</td>
                     <td>
                    <asp:Button ID="Button1" runat="server" Text="View" OnClick="Button1_Click"></asp:Button>
                </td>
            </tr>
            </table>
        
        <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    
                    <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" >
                     <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                     <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="image" SortExpression="image">
                    <EditItemTemplate>
                       
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Width="100px" ImageUrl='<%# getimage(Eval("Id").ToString()) %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                    <asp:CommandField ShowSelectButton="True" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:storeConnectionString %>" SelectCommand="SELECT * FROM [userinfo]"></asp:SqlDataSource>
            <br />
            <br />
        </div>
        </center>
    </form>
</body>
</html>
