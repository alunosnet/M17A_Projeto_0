<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="M17A_Projeto_0.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nome:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br /><asp:Button OnClick="Button1_Click" ID="Button1" runat="server" Text="Olá" />
            <br /><asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
