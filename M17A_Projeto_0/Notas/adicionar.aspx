<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionar.aspx.cs" Inherits="M17A_Projeto_0.Notas.adicionar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView DefaultMode="Insert"  Width="100%" ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="SqlNotas">
                <EditItemTemplate>
                    id:
                    <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel1" /><br />
                    nprocesso:
                    <asp:TextBox Text='<%# Bind("nprocesso") %>' runat="server" ID="nprocessoTextBox" /><br />
                    data_nota:
                    <asp:TextBox Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaTextBox" /><br />
                    valor:
                    <asp:TextBox Text='<%# Bind("valor") %>' runat="server" ID="valorTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    aluno:
                    <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("nprocesso") %>' DataSourceID="SqlAlunos" DataTextField="nome" DataValueField="nprocesso"></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlAlunos" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [nprocesso], [nome] FROM [alunos] ORDER BY [nome]"></asp:SqlDataSource>
                    <br />data_nota:
                    <asp:TextBox TextMode="Date" Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaTextBox" /><br />
                    valor:
                    <asp:TextBox TextMode="Number" Text='<%# Bind("valor") %>' runat="server" ID="valorTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id:
                    <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel" /><br />
                    nprocesso:
                    <asp:Label Text='<%# Bind("nprocesso") %>' runat="server" ID="nprocessoLabel" /><br />
                    data_nota:
                    <asp:Label Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaLabel" /><br />
                    valor:
                    <asp:Label Text='<%# Bind("valor") %>' runat="server" ID="valorLabel" /><br />
                    <asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource runat="server" ID="SqlNotas" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' InsertCommand="INSERT INTO notas(nprocesso, data_nota, valor) VALUES (@nprocesso, @data_nota, @valor)" SelectCommand="SELECT * FROM [notas]">
                <InsertParameters>
                    <asp:Parameter Name="nprocesso"></asp:Parameter>
                    <asp:Parameter Name="data_nota"></asp:Parameter>
                    <asp:Parameter Name="valor"></asp:Parameter>
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
