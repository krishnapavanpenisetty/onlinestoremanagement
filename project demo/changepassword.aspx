<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="project_demo.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
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
     <br><br><br><br>  
    
    <center>
    <form id="form1" runat="server">
        <div class="container">
			<div class="col-md-4 col-md-offset-4">
				

        <from>
        <h2>Change Password</h2>      
        <div class="form-group">
        <asp:TextBox ID="pwd" runat="server" placeholder="old password" class="form-control input-md" TextMode="Password"></asp:TextBox> 

        </div>
        
        <div class="form-group">
         <asp:TextBox ID="newpwd" runat="server" placeholder="New Password" class="form-control input-md" TextMode="Password"></asp:TextBox>
            </div>
        <div class="form-group">
        <asp:Button ID="Button1" class="btn btn-primary" runat="server" OnClick="Button1_Click" Text="change" />
        
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        
        </div>
            </from>
                </div></div>

    </form>
        </center>
   </body>
</html>
