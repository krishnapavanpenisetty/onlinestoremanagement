<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="success.aspx.cs" Inherits="project_demo.success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
		 <h3>Your order <% Response.Write(Request.QueryString[0].ToString()); %>is confirmed.<br> Thank you for shopping with us.
		 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.aspx">Click Here</asp:HyperLink> to purchase any other item.</h3></center>
		   
        </div>
       
    </form>
</body>
</html>
