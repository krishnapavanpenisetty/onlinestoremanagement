<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changepwd.aspx.cs" Inherits="project_demo.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="changepassword" />
        </div>
    </form>
</body>
</html>
