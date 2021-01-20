<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gerir.aspx.cs" Inherits="M17A_Projeto_0.Alunos.gerir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView PageSize="5" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="nprocesso" DataSourceID="SqlAlunos" AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                    <asp:BoundField DataField="nprocesso" HeaderText="nprocesso" ReadOnly="True" InsertVisible="False" SortExpression="nprocesso"></asp:BoundField>
                    <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome"></asp:BoundField>
                    <asp:BoundField DataFormatString="{0:dd-MM-yyyy}" DataField="data_nascimento" HeaderText="data_nascimento" SortExpression="data_nascimento"></asp:BoundField>
                    <asp:BoundField DataField="turma" HeaderText="turma" SortExpression="turma"></asp:BoundField>
                    <asp:BoundField DataField="ano" HeaderText="ano" SortExpression="ano"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlAlunos" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="delete from alunos WHERE nprocesso=@nprocesso" SelectCommand="SELECT * FROM [alunos]" UpdateCommand="UPDATE alunos SET nome = @nome, data_nascimento = @data_nascimento, turma = @turma, ano = @ano WHERE (nprocesso = @nprocesso)">
                <DeleteParameters>
                    <asp:Parameter Name="nprocesso"></asp:Parameter>
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nome"></asp:Parameter>
                    <asp:Parameter Name="data_nascimento" DbType="Date"></asp:Parameter>
                    <asp:Parameter Name="turma"></asp:Parameter>
                    <asp:Parameter Name="ano"></asp:Parameter>
                    <asp:Parameter Name="nprocesso"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
