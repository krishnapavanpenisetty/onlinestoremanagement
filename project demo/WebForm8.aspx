<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="project_demo.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

        </div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                productname:
                <asp:Label ID="productnameLabel" runat="server" Text='<%# Eval("productname") %>' />
                <br />
                producttype:
                <asp:Label ID="producttypeLabel" runat="server" Text='<%# Eval("producttype") %>' />
                <br />
                modelid:
                <asp:Label ID="modelidLabel" runat="server" Text='<%# Eval("modelid") %>' />
                <br />
                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                <br />
                quality:
                <asp:Label ID="qualityLabel" runat="server" Text='<%# Eval("quality") %>' />
                <br />
                img:
                <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
                <br />
                company:
                <asp:Label ID="companyLabel" runat="server" Text='<%# Eval("company") %>' />
                <br />
                status:
                <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                <br />
                tid:
                <asp:Label ID="tidLabel" runat="server" Text='<%# Eval("tid") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:storeConnectionString %>" SelectCommand="SELECT * FROM [solditems] WHERE ([email] = @email)">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="email" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:storeConnectionString %>" SelectCommand="SELECT * FROM [solditems] WHERE ([email] = @email)">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="email" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
