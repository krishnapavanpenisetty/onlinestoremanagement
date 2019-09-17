<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="try.aspx.cs" Inherits="project_demo._try" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head><style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 328px;
        }
        .auto-style3 {
            width: 328px;
            text-align: right;
        }
        .auto-style4 {
            margin-top: 0px;
        }
        .auto-style5 {
            width: 328px;
            text-align: right;
            height: 14px;
        }
        .auto-style6 {
            height: 14px;
        }
        .auto-style7 {
            height: 14px;
            width: 415px;
            text-align: center;
        }
        .auto-style8 {
            width: 415px;
        }
        .auto-style9 {
            width: 415px;
            text-align: center;
        }
        .auto-style10 {
            font-size: xx-large;
            color: #0066FF;
        }
        .auto-style11 {
            width: 328px;
            text-align: right;
            height: 46px;
        }
        .auto-style12 {
            width: 415px;
            text-align: center;
            height: 46px;
        }
        .auto-style13 {
            height: 46px;
        }
        .auto-style14 {
            width: 328px;
            text-align: right;
            height: 43px;
        }
        .auto-style15 {
            width: 415px;
            text-align: center;
            height: 43px;
        }
        .auto-style16 {
            height: 43px;
        }
        .auto-style17 {
            margin-left: 0px;
        }
        .auto-style18 {
            width: 328px;
            text-align: right;
            height: 57px;
        }
        .auto-style19 {
            width: 415px;
            text-align: center;
            height: 57px;
        }
        .auto-style20 {
            height: 57px;
        }
        .auto-style21 {
            color: #FF0000;
        }
        .auto-style22 {
            width: 328px;
            text-align: right;
            height: 61px;
        }
        .auto-style23 {
            width: 415px;
            text-align: center;
            height: 61px;
        }
        .auto-style24 {
            height: 61px;
        }
        .auto-style25 {
            width: 328px;
            text-align: right;
            height: 55px;
        }
        .auto-style26 {
            width: 415px;
            text-align: center;
            height: 55px;
        }
        .auto-style27 {
            height: 55px;
        }
        .auto-style28 {
            width: 328px;
            height: 11px;
        }
        .auto-style29 {
            width: 415px;
            height: 11px;
        }
        .auto-style30 {
            color: #FF0000;
            height: 11px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style7"><span class="auto-style10">Regestration<br />
                    <br />
                    </span>&nbsp;<br />
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style3">User Name</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBoxuname" runat="server" CssClass="auto-style4" Width="210px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxuname" CssClass="auto-style21" ErrorMessage="Enter your name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">G-mail</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBoxgmail" runat="server" Width="210px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxgmail" CssClass="auto-style21" ErrorMessage="Enter your g-mail"></asp:RequiredFieldValidator>
                    <br class="auto-style21" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxgmail" CssClass="auto-style21" ErrorMessage="Enter valid g-mail id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBoxpass" runat="server" TextMode="Password" Width="210px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxpass" CssClass="auto-style21" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">Re-Password</td>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBoxRpass" runat="server" TextMode="Password" Width="210px"></asp:TextBox>
                </td>
                <td class="auto-style24">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxRpass" CssClass="auto-style21" ErrorMessage="Re-enter password"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxpass" ControlToValidate="TextBoxRpass" ErrorMessage="Both passwords must be same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style28"></td>
                <td class="auto-style29"></td>
                <td class="auto-style30"></td>
            </tr>
            <tr>
                <td class="auto-style11">Phone no</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBoxphone" runat="server" MaxLength="10" Width="210px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxphone" CssClass="auto-style21" ErrorMessage="Enter your phone"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBoxphone" ErrorMessage="Enter valid 10 digit number" ForeColor="Red" MaximumValue="9999999999" MinimumValue="1111111111" Type="Double"></asp:RangeValidator>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style14">Address</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBoxAddres" runat="server" CssClass="auto-style17" TextMode="MultiLine" Width="211px"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxAddres" CssClass="auto-style21" ErrorMessage="Enter your address"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">City</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBoxcity" runat="server" Width="210px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxcity" CssClass="auto-style21" ErrorMessage="Enter your city"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style25">Pin code</td>
                <td class="auto-style26">
                    <asp:TextBox ID="TextBoxpin" runat="server" MaxLength="6" Width="210px"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxpin" CssClass="auto-style21" ErrorMessage="Enter pin code"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBoxpin" CssClass="auto-style21" ErrorMessage="give valid no" MaximumValue="999999" MinimumValue="100000" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="73px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

