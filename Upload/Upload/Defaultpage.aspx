<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Defaultpage.aspx.cs" Inherits="Upload.Defaultpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background:#ff6a00; 
            margin:0px auto;
            
        }
        .formclass {
            padding:20px;
            text-align:center;
            
            margin:10% auto;
            background:#b6ff00;
            width:200px;
        }

        .input {
            padding:2px;
            width:100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="formclass">
        <h2>Login Page</h2> 
        <asp:TextBox ID="Txtuser" CssClass="input" placeholder="User Name" runat="server"></asp:TextBox><br /><br />
        <asp:TextBox ID="Txtpass" CssClass="input" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox><br /><br />
        
        <asp:Button ID="btnlogin" CssClass="input" runat="server" Text="Login"  OnClick="btnlogin_Click" />
    
    </div>
    </form >
</body>
</html>
