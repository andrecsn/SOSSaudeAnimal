﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Cadastros/Site1.Master" AutoEventWireup="true" CodeBehind="CadastrarHistVacina.aspx.cs" Inherits="ClinicaVeterinaria.Cadastros.CadastrarHistVacina" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Corpo" runat="server">

    <form id="form1" runat="server" class="jumbotron">

        <h2>Cadastrar Histórico de Vacinas</h2>
        <h4>Resumo de todas os históricos de vacina cadastradas.</h4>

        </br>

        <asp:Label ID="lblMensagem" runat="server"></asp:Label>

        <div class="col-xs-9">
            <asp:Label ID="lblTituloAnimal" runat="server" Text="" Font-Bold="True">Nome Animal: </asp:Label>
            <asp:Label ID="lblAnimal" runat="server"></asp:Label>
        </div>

        <div class="col-xs-9">
            <asp:Label ID="lblTituloResponsavel" runat="server" Text="" Font-Bold="True">Nome do Responsavél: </asp:Label>
            <asp:Label ID="lblResponsavel" runat="server"></asp:Label>
        </div>

        <p>&nbsp</p>
        </br>

        <!-- Small modal -->
        <%--<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">Small modal</button>
        <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="gridSystemModalLabel">Modal title</h4>
                    </div>
                    Aqui colocar os resultados
                </div>
            </div>
        </div>--%>

        <div class="col-xs-3">
            <label for="usr">Vacina: </label>
            <asp:DropDownList ID="cboVacina" runat="server" class="form-control">
            </asp:DropDownList>
        </div>

        <div class='col-sm-3'>
            <div class="form-group">
                <label for="usr">Data de Aplicação: </label>
                <div class='input-group date'>
                    <asp:TextBox ID="txtDt_aplicacao" runat="server" class="form-control data" required></asp:TextBox>
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
        </div>

        <div class='col-sm-3'>
            <div class="form-group">
                <label for="usr">Revacinar: </label>
                <div class='input-group date'>
                    <asp:TextBox ID="txtDt_vencimento" runat="server" class="form-control data" required></asp:TextBox>
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
        </div>

        <div class="col-xs-3">
            </br>
            <asp:Button ID="btnCadastrar" runat="server" Text="Incluir Vacina" class="btn btn-primary" OnClick="btnCadastrar_Click" />
            <asp:LinkButton ID="btnVoltar" runat="server" class="btn btn-primary" OnClick="btnVoltar_click">voltar</asp:LinkButton>
        </div>

        <p>&nbsp</p>

        <asp:GridView ID="gridHistVacina" runat="server" AutoGenerateColumns="False" CssClass="table table-hover" GridLines="None"
            OnRowCommand="gridHistVacina_RowCommand" DataKeyNames="cd_hist_vacina">
            <Columns>
                <asp:BoundField DataField="cd_hist_vacina" HeaderText="#" />
                <asp:BoundField DataField="vacina.nm_vacina" HeaderText="Vacina" />
                <asp:BoundField DataField="dt_hist_vacina" DataFormatString="{0:dd/MM/yyyy}" HtmlEncode="false" HeaderText="Data de Aplicação" />
                <asp:BoundField DataField="dt_vencimento" DataFormatString="{0:dd/MM/yyyy}" HtmlEncode="false" HeaderText="Revacinar" />
                <asp:CommandField ButtonType="Image" DeleteImageUrl="~/App_Themes/Bootstrap/images/delete.png" ShowDeleteButton="True" HeaderText="Excluir" />
            </Columns>
        </asp:GridView>


    </form>

</asp:Content>
