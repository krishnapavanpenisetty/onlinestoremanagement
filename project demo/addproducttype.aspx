<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addproducttype.aspx.cs" Inherits="project_demo.addproducttype" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style type="text/css">
        .auto-style1 {
            width: 98%;
        }
        .auto-style2 {
            width: 100%;
            height: 198px;
        }
        .auto-style3 {
            width: 283px;
        }
        .auto-style4 {
            width: 711px;
        }
        .auto-style5 {
            width: 97%;
            height: 175px;
        }
        .auto-style6 {
            margin-left: 38px;
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
        <div>

            <table class="auto-style2">
                <tr>
                    <td class="auto-style4">
                        <table class="auto-style1">

                         <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="Label2" runat="server" Text="ID"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" Width="286px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="Label1" runat="server" Text="PRODUCT TYPE"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" Width="286px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <table class="auto-style5">
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-block" OnClick="Button1_Click" Text="ADD" Width="162px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button2" runat="server" class="btn btn-primary btn-block" OnClick="Button2_Click" Text="UPDATE" Width="162px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-block" OnClick="Button3_Click" Text="DELETE" Width="162px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button4" runat="server" class="btn btn-primary btn-block" OnClick="Button4_Click" Text="VIEW" Width="162px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>

        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="123px" Width="952px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
    </form>
</body>
</html>
