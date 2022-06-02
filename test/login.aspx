<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="test.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style type="text/css">
        .auto-style1 {
            position:absolute; 
            top: 30%;
            left: 35%;
            width: 256px;
            height: 146px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <h1 style ="position: absolute; top: 20%; left: 35%; font-size: 21px;">Hello, Welcome :) </h1> 
        <table class="auto-style1">
            <tr>
                <td>Username: </td>
                <td><asp:TextBox ID="TextBox1" runat="server" Width="143px"></asp:TextBox>

                </td>
                
            </tr>
            <tr>
                <td>Password: </td>
                <td><asp:TextBox ID="TextBox2" runat="server" Width="143px"></asp:TextBox>

                </td>
                
            </tr>
            <tr>
                <td><asp:Button ID="Button1" runat="server" Text="Login" Width="74px" OnClick="Button1_Click" /></td>
                
       
                
            </tr>
        </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [insertData]"></asp:SqlDataSource>
        
        </div>
    </form>
</body>
</html>
