<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Upload.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
          body {
            background:#ff6a00; 
            margin:0px auto;
            
        }
        .formclass {
                padding: 0px inherit;
                text-align: center;
                margin: 10% auto;
                background: rgba(0, 255, 139, 0.74);
                width: 600px;
                height: auto;
        }

        .input {
            padding:2px;
            width:100%;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 168px;
            text-align: right;
        }
        .auto-style3 {
            text-align: left;
            width: 203px;
        }
        .auto-style4 {
            width: 203px;
        }
        .auto-style5 {
            width: 82px;
        }
        .auto-style6 {
            width: 203px;
            text-align: center;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="formclass">
        <h2>Registration Page</h2>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">User Name :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="Txtuser" runat="server" placeholder="User Name" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtuser" ErrorMessage="User Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="Txtemail" runat="server" placeholder="Email id" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtemail" ErrorMessage="Valid Email Id is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Txtemail" ErrorMessage="You Must Enter a Valid Email Id." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="Txtpass" runat="server" placeholder="Password" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txtpass" ErrorMessage="Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxtRpass" runat="server" placeholder="Confirm Password" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtRpass" ErrorMessage="Password Confirmation is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Txtpass" ControlToValidate="TxtRpass" ErrorMessage="Both Password must be same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="Btn_submit" runat="server" OnClick="Btn_submit_Click" Text="Submit" Width="78px" />
                    <input id="Reset1" class="auto-style5" type="reset" value="reset" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
