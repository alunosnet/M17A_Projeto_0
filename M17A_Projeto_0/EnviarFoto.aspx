<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnviarFoto.aspx.cs" Inherits="M17A_Projeto_0.EnviarFoto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
            <asp:Button runat="server" ID="bt" Text="Enviar" OnClick="bt_Click" />
        </div>
    </form>
</body>
</html>
