<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="produtos.aspx.cs" Inherits="CrudDB.produtos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="IdProduto" InsertItemPosition="LastItem">
    <AlternatingItemTemplate>
        <tr style="background-color: #FFFFFF;color: #284775;">
            <td>
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Remover" />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
            </td>
            <td>
                <asp:Label ID="IdProdutoLabel" runat="server" Text='<%# Eval("IdProduto") %>' />
            </td>
            <td>
                <asp:Label ID="NomeProdutoLabel" runat="server" Text='<%# Eval("NomeProduto") %>' />
            </td>
            <td>
                <asp:Label ID="DescProdutoLabel" runat="server" Text='<%# Eval("DescProduto") %>' />
            </td>
            <td>
                <asp:Label ID="PreçoLabel" runat="server" Text='<%# Eval("Preço") %>' />
            </td>
        </tr>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <tr style="background-color: #999999;">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Salvar" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
            </td>
            <td>
                <asp:Label ID="IdProdutoLabel1" runat="server" Text='<%# Eval("IdProduto") %>' />
            </td>
            <td>
                <asp:TextBox ID="NomeProdutoTextBox" runat="server" Text='<%# Bind("NomeProduto") %>' />
            </td>
            <td>
                <asp:TextBox ID="DescProdutoTextBox" runat="server" Text='<%# Bind("DescProduto") %>' />
            </td>
            <td>
                <asp:TextBox ID="PreçoTextBox" runat="server" Text='<%# Bind("Preço") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
            <tr>
                <td>Nenhum dado foi retornado.</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserir" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Limpar" />
            </td>
            <td>
                <asp:TextBox ID="IdProdutoTextBox" runat="server" Text='<%# Bind("IdProduto") %>' />
            </td>
            <td>
                <asp:TextBox ID="NomeProdutoTextBox" runat="server" Text='<%# Bind("NomeProduto") %>' />
            </td>
            <td>
                <asp:TextBox ID="DescProdutoTextBox" runat="server" Text='<%# Bind("DescProduto") %>' />
            </td>
            <td>
                <asp:TextBox ID="PreçoTextBox" runat="server" Text='<%# Bind("Preço") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="background-color: #E0FFFF;color: #333333;">
            <td>
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
            </td>
            <td>
                <asp:Label ID="IdProdutoLabel" runat="server" Text='<%# Eval("IdProduto") %>' />
            </td>
            <td>
                <asp:Label ID="NomeProdutoLabel" runat="server" Text='<%# Eval("NomeProduto") %>' />
            </td>
            <td>
                <asp:Label ID="DescProdutoLabel" runat="server" Text='<%# Eval("DescProduto") %>' />
            </td>
            <td>
                <asp:Label ID="PreçoLabel" runat="server" Text='<%# Eval("Preço") %>' />
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                            <th runat="server"></th>
                            <th runat="server">IdProduto</th>
                            <th runat="server">NomeProduto</th>
                            <th runat="server">DescProduto</th>
                            <th runat="server">Preço</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </td>
            </tr>
        </table>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
            <td>
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
            </td>
            <td>
                <asp:Label ID="IdProdutoLabel" runat="server" Text='<%# Eval("IdProduto") %>' />
            </td>
            <td>
                <asp:Label ID="NomeProdutoLabel" runat="server" Text='<%# Eval("NomeProduto") %>' />
            </td>
            <td>
                <asp:Label ID="DescProdutoLabel" runat="server" Text='<%# Eval("DescProduto") %>' />
            </td>
            <td>
                <asp:Label ID="PreçoLabel" runat="server" Text='<%# Eval("Preço") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [Produto] WHERE [IdProduto] = @IdProduto" 
    InsertCommand="INSERT INTO [Produto] ([IdProduto], [NomeProduto], [DescProduto], [Preço]) VALUES (@IdProduto, @NomeProduto, @DescProduto, @Preço)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
    SelectCommand="SELECT [IdProduto], [NomeProduto], [DescProduto], [Preço] FROM [Produto]" 
    UpdateCommand="UPDATE [Produto] SET [NomeProduto] = @NomeProduto, [DescProduto] = @DescProduto, [Preço] = @Preço WHERE [IdProduto] = @IdProduto">
    <DeleteParameters>
        <asp:Parameter Name="IdProduto" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="IdProduto" Type="Int32" />
        <asp:Parameter Name="NomeProduto" Type="String" />
        <asp:Parameter Name="DescProduto" Type="String" />
        <asp:Parameter Name="Preço" Type="Single" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="NomeProduto" Type="String" />
        <asp:Parameter Name="DescProduto" Type="String" />
        <asp:Parameter Name="Preço" Type="Single" />
        <asp:Parameter Name="IdProduto" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
