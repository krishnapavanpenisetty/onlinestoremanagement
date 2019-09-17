<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="project_demo.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style type="text/css">
        .auto-style1 {
            width: 45%;
            height: 197px;
            margin-left: 253px;
            background-color: #00FFFF;
        }
    </style>
</head>
<body>
   
  
    <form id="form1" runat="server">
        
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
    
        <br /><br /><br />

    <form>
        <div class="container">
		<div class="row">
			<div class="col-xs-4 col-xs-offset-4">
				
			
	<div class="panel panel-primary">
		<div class="panel-heading">
			
			
		</div>
		<div class="panel-body">
		<p class="text-warning">
			Login to make purchase
			</div>
				<div class="form-group">
				Email<asp:TextBox ID="email" runat="server" class="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="email" ErrorMessage="enter valid email" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="please enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                
				</div>
				<div class="form-group">
				Password<asp:TextBox ID="password" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="enter the password" ForeColor="Red"></asp:RequiredFieldValidator>
                  
				</div>
				 <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" class="btn btn-primary btn-lg" />
        
			<asp:Label ID="Label1" runat="server"></asp:Label>
   
		
		
		<div class="panel-footer">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/signup.aspx">Don't have an account? Register</asp:HyperLink>
			
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/forgotpassword.aspx">Forgot password?Change it</asp:HyperLink>
			
            </div>
		</div>
	</div>
	</div>
			
		</div>
		
	</div>
         </form>
        <br /><br />
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
