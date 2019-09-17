<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="project_demo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign-Up</title>
   
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server" >
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

        <div class="container">
            <div class="row">
             
                <div class="col-xs-4 col-xs-offset-4">


         <form>
      
            <h3>Signup</h3>
          <div class="form-group">
        <asp:TextBox ID="name" placeholder="Name" class="form-control input-lg" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BorderColor="Red" ControlToValidate="name" ErrorMessage="REQUIRE NAME" ForeColor="Red"></asp:RequiredFieldValidator>
         </div>

        <div class="form-group">
        <asp:TextBox ID="email" placeholder="Email" class="form-control input-lg" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ForeColor="Red">REQUIRE EMAIL</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="REQUIRE VALID EMAIL-ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
         </div>
        <div class="form-group">
        <asp:TextBox ID="password" placeholder="Password" class="form-control input-lg" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" ErrorMessage="REQUIRE PASSWORD" ForeColor="Red"></asp:RequiredFieldValidator>
         </div>
        <div class="form-group">
        <asp:TextBox ID="contact" placeholder="Contact" class="form-control input-lg" runat="server" MaxLength="10"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="contact" ErrorMessage="REQUIRE CONTACT" ForeColor="Red"></asp:RequiredFieldValidator>
  <asp:RangeValidator ID="RangeValidator2" runat="server"  ErrorMessage="Enter valid 10 digit number" ForeColor="Red" MaximumValue="9999999999" MinimumValue="1111111111" Type="Double" ControlToValidate="contact"></asp:RangeValidator>       
         </div>
        <div class="form-group">
        <asp:TextBox ID="address" placeholder="Address" class="form-control input-lg" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="address" ErrorMessage="REQUIRE ADDRESS" ForeColor="Red"></asp:RequiredFieldValidator>
         </div>
        <div class="form-group">
        <asp:TextBox ID="city" placeholder="City" class="form-control input-lg" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="city" ErrorMessage="REQUIRE CITY" ForeColor="Red"></asp:RequiredFieldValidator>
         </div>
        <div class="form-group">
        <asp:TextBox ID="pincode" placeholder="pincode"  runat="server" class="form-control input-lg"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="pincode" ErrorMessage="REQUIRE PINCODE" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="pincode" CssClass="auto-style21" ErrorMessage="Enter valid pincode" MaximumValue="999999" MinimumValue="100000" Type="Integer" ForeColor="Red"></asp:RangeValidator>    
        </div>
            <div class="form-group">
            <asp:FileUpload ID="FileUpload1" runat="server" class="form-control input-lg" />


            </div>
        
        
        <div class="form-group">
        <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" OnClick="Button1_Click" Text="Sign Up" />
            </div>
           <div class="form-group">
               <asp:Label ID="Label1" runat="server" Class="form-control input-lg" Font-Bold="True" ForeColor="Red"></asp:Label>

           </div>
       </form>
        </div></div></div>
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
