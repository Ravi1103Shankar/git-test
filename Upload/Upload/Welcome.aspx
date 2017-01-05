

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Upload.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      
        <asp:label ID="Txtuser" runat="server" Text=""></asp:label>
          <asp:Button ID="btnlogout" runat="server" Text="Logout" OnClick="btnlogout_Click" />
    </div>
    </form>
</body>
</html>
