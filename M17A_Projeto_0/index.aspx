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
        <div id="divOlaMundo" runat="server">
            Olá mundo
        </div>
        <br /><asp:DropDownList OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" ID="DropDownList1" runat="server" AutoPostBack="True">
            <asp:ListItem>Consulta 1</asp:ListItem>
            <asp:ListItem>Consulta 2</asp:ListItem>
            <asp:ListItem>Consulta 3</asp:ListItem>
        </asp:DropDownList>
        <br /><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <div id="avisoCookies" runat="server">
            Este site utiliza cookies.
            <asp:Button ID="btCookies" runat="server" Text="Aceitar" OnClick="btCookies_Click" />
        </div>
        <asp:Button ID="Button2" runat="server" Text="Adicionar Alunos" OnClick="Button2_Click" />
    </form>
</body>
</html>
