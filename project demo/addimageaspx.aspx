<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addimageaspx.aspx.cs" Inherits="project_demo.addimageaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
        </div>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <div id="k">
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="save" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="display" />
        <p>
            
            <asp:Image ID="Image1" runat="server" Width="100px"/>
                    
                 
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:storeConnectionString %>" SelectCommand="SELECT * FROM [addimg]"></asp:SqlDataSource>
                    
                 
        </p>
       
            <div>
                 <%=getdata()%>       
        </div>
            
    </form>
   
</body>
</html>
