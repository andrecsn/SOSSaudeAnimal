﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Cadastros/Site1.Master" AutoEventWireup="true" CodeBehind="CadastroFuncionario.aspx.cs" Inherits="ClinicaVeterinaria.cadastroVeterinaria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Corpo" runat="server">

    <form id="form1" runat="server" class="jumbotron">

        <h2><asp:Label ID="lblTitulo" runat="server" Text="Cadastrar Funcionário"></asp:Label></h2>
        <h4>Preencha todos os dados de funcionário corretamente.</h4>

        </br>

    <div class="row">

        <asp:Label ID="lblCodigo" runat="server" Text="" Visible="False" Enabled="False"></asp:Label>

        <div class="col-xs-8">
            <label for="usr">Name:</label>
            <asp:TextBox ID="txtNome" runat="server" Columns="50" class="form-control" placeholder="Nome completo" required autofocus></asp:TextBox>
            <asp:Label ID="lblNome" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>

        <div class="col-xs-4">
            <label for="usr">CPF:</label>
            <asp:TextBox ID="txtCPF" runat="server" class="form-control cpf" placeholder="000.000.000-00" required></asp:TextBox>
            <asp:Label ID="lblCPF" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>

        <div class="col-xs-4">
            <label for="usr">Login:</label>
            <asp:TextBox ID="txtLogin" runat="server" class="form-control" required></asp:TextBox>
            <asp:Label ID="lblLogin" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>

        <div class="col-xs-4">
            <asp:Label ID="lblSenhaTitulo" runat="server" Text="Senha:" Font-Bold="True"></asp:Label>
            <asp:TextBox ID="txtSenha" runat="server" class="form-control" required TextMode="Password"></asp:TextBox>
        </div>

        <div class="col-xs-4">
            <label for="usr">Tipo:</label>
            <asp:DropDownList ID="cboTipo" runat="server" class="form-control" required>
                <asp:ListItem><-- Selecionar --></asp:ListItem>
                <asp:ListItem Value="Atendente">Atendente</asp:ListItem>
                <asp:ListItem Value="Veterinária">Veterinária</asp:ListItem>
                <asp:ListItem Value="Administrador">Administrador</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="lblTipo" runat="server" Visible="False"></asp:Label>
        </div>

        <div class="col-xs-4">
            <label for="usr">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="nome@seuemail.com" required></asp:TextBox>
            <asp:Label ID="lblEmail" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>

        <div class="col-xs-4">
            <label for="usr">Telefone:</label>
            <asp:TextBox ID="txtTelefone" runat="server" class="form-control telefone" placeholder="(xx) xxxx-xxxx" required></asp:TextBox>
            <asp:Label ID="lblTelefone" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>

        <div class="col-xs-4">
            <label for="usr">Celular:</label>
            <asp:TextBox ID="txtCelular" runat="server" class="form-control telefone" placeholder="(xx) xxxxx-xxxx" required></asp:TextBox>
            <asp:Label ID="lblCelular" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>

        <div class="col-xs-4">
            <label for="usr">Endereço:</label>
            <asp:TextBox ID="txtEndereco" runat="server" class="form-control" placeholder="Endereço completos" required></asp:TextBox>
            <asp:Label ID="lblEndereco" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>

        <div class="col-xs-4">
            <label for="usr">Bairro:</label>
            <asp:TextBox ID="txtBairro" runat="server" class="form-control" required></asp:TextBox>
            <asp:Label ID="lblBairro" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>

        <div class="col-xs-4">
            <label for="usr">CEP:</label>
            <asp:TextBox ID="txtCEP" runat="server" class="form-control cep" placeholder="00000-000" required></asp:TextBox>
            <asp:Label ID="lblCEP" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>

        <div class="col-xs-4">
            <label for="usr">Cidade:</label>
            <asp:TextBox ID="txtCidade" runat="server" class="form-control" required></asp:TextBox>
            <asp:Label ID="lblCidade" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>

        <div class="col-xs-4">
            <label for="usr">Estado:</label>
            <asp:DropDownList ID="cboEstado" runat="server" class="form-control">
                <asp:ListItem Value="RJ">Rio de janeiro</asp:ListItem>
                <asp:ListItem Value="SP">São paulo</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="lblEstado" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>
    </div>

        <p></p>

        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" class="btn btn-primary" OnClick="btnCadastrar_Click" />
        <asp:Button ID="btnAlterar" runat="server" Text="Alterar" class="btn btn-primary" OnClick="btnAlterar_Click" Visible="False" />
        <asp:Button ID="btnExcluir" runat="server" Text="Excluir" class="btn btn-danger" OnClick="btnExcluir_Click" Visible="False" />
        <asp:LinkButton ID="btnVoltar" runat="server" class="btn btn-primary" OnClick="btnVoltar_click">voltar</asp:LinkButton>

    </form>
</asp:Content>

