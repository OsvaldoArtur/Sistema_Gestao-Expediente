﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormDetalhesExpediente.aspx.cs" Inherits="SGD.WebFormDetalhesExpediente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper">
                    <div class="page-header">
                        <div class="page-header-title">
                            <h4>Detalhes</h4>
                        </div>
                        <div class="page-header-breadcrumb">
                            <ul class="breadcrumb-title">
                                <li class="breadcrumb-item">
                                    <a href="WebFormInicio.aspx">
                                        <i class="icofont icofont-home"></i>
                                        Inicio 
                                    </a>
                                </li>
                                <li class="breadcrumb-item">Detalhes Expediente 
                                </li>

                            </ul>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <asp:Panel ID="PanelResponder" runat="server">
                                     <div class="row">
                                    <div class="col-md-12">
                                        <div class="card b-l-info business-info services m-b-20">
                                            <div class="card-header">
                                                                         <div class="card-header-right">
                                            <i class="icofont icofont-rounded-down"></i>
                                            <i class="icofont icofont-close-circled"></i>

                                        </div>
                                                <div class="service-header">
                                                    <a>
                                                        <h5 class="card-header-text">Mensagem <i class="icofont icofont-2x icofont-inbox"></i></h5>
                                                    </a>
                                                </div>

                                            </div>
                                            <div class="card-block">
                                                <div class="">
                                                    <div class="form-group row">
                                                        <div class="col-sm-2">
                                                       <asp:DropDownList ID="DropResposta" CssClass="form-control" runat="server">
                                                           <asp:ListItem>Deferido</asp:ListItem>
                                                           <asp:ListItem>Indeferido</asp:ListItem>
                                                           <asp:ListItem>Autorizado</asp:ListItem>
                                                           <asp:ListItem>Nao Autorizado</asp:ListItem>
                                                           <asp:ListItem>Em analise</asp:ListItem>
                                                       </asp:DropDownList>
                                                    </div>
                                                           <div class="col-sm-6">
                                                       
                                                    </div>
                                                    </div>
                                                        <div class="form-group row">
                                                        <div class="col-sm-6">
                                                       
                                                    </div>
                                                           <div class="col-sm-6">
                                                       
                                                    </div>
                                                    </div>

                                                    
                                                    <!-- end of col-sm-8 -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </asp:Panel>
                            </div>
                            <div class="col-lg-12">
                                <div class="card card-border-info">
                                    <div class="card-header">
                                        <h5>Lista de Categorias <i class="icofont icofont-2x icofont-clip"></i></h5>
                                        <div class="card-header-right">
                                            <i class="icofont icofont-rounded-down"></i>
                                            <i class="icofont icofont-close-circled"></i>

                                        </div>
                                    </div>

                                    <div class=" row card-block">
                                        <div class="col-sm-12">
                                            <div class="view-info">
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="general-info">
                                                            <div class="row">
                                                                <div class="col-lg-12 col-xl-6">
                                                                    <table class="table m-0">
                                                                        <%
                                                                            si = new SGD.Models.sgdbEntities();
                                                                            int idP = int.Parse(Request.QueryString["index"]);
                                                                            var leva = si.View_Recebimentos.Where(d => d.idRecebimento == idP).FirstOrDefault();

                                                                            var usuario = si.user.Where(s => s.idUser == leva.idUsuario).FirstOrDefault();
                                                                            string Nome = usuario.NomeUsuario.ToString();

                                                                        %>
                                                                        <tbody>
                                                                            <tr>
                                                                                <th scope="row">Titulo:</th>
                                                                                <td><%=leva.Titulo %></td>
                                                                            </tr>
                                                                            <tr>
                                                                                
                                                                                <th scope="row">Tipo de Documento:</th>
                                                                                <td><%=leva.NomeCategoria %></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <th scope="row">Data Envio:</th>
                                                                                <td><%=leva.DataEnvio %></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <th scope="row">Contacto:</th>
                                                                                <td><%=leva.Contacto %></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <th scope="row">Nivel de Urgencia:</th>
                                                                                <td><%=leva.NivelUrgencia %></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                                <div class="col-lg-12 col-xl-6">
                                                                    <table class="table m-0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <th scope="row">Enviante:</th>
                                                                                <td><%=Nome %></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <th scope="row">Estado:</th>
                                                                                <td><%=leva.Estado %></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <th scope="row">Data Recebimento:</th>
                                                                                <td><%=leva.DataRecebimento %></td>
                                                                            </tr>
                                                                               <tr>
                                                                                <th scope="row"></th>
                                                                                <td><div class="text-right"> <asp:LinkButton ID="btnResponder" CssClass="btn btn-info" runat="server" Text="Responder" /> </div></td>
                                                                            </tr>
                                                                            <%-- <tr>
                                                                                <th scope="row">Location</th>
                                                                                <td>New York, USA</td>
                                                                            </tr>--%>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card b-l-info business-info services m-b-20">
                                            <div class="card-header">
                                                                         <div class="card-header-right">
                                            <i class="icofont icofont-rounded-down"></i>
                                            <i class="icofont icofont-close-circled"></i>

                                        </div>
                                                <div class="service-header">
                                                    <a>
                                                        <h5 class="card-header-text">Mensagem <i class="icofont icofont-2x icofont-inbox"></i></h5>
                                                    </a>
                                                </div>

                                            </div>
                                            <div class="card-block">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <p class="task-detail" style="font-size:larger "><%=leva.Mensagem %></p>
                                                    </div>
                                                    <!-- end of col-sm-8 -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                   
                                   <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card b-l-info business-info services m-b-20">
                                            <div class="card-header">
                                                                         <div class="card-header-right">
                                            <i class="icofont icofont-rounded-down"></i>
                                            <i class="icofont icofont-close-circled"></i>

                                        </div>
                                                <div class="service-header">
                                                    <a>
                                                        <h5 class="card-header-text">Documentos <i class="icofont icofont-2x icofont-document-folder"></i></h5>
                                                    </a>
                                                </div>

                                            </div>
                                            <div class="card-block">
                                        <div class="row">
                                             <div style="overflow: scroll" class="col-lg-12">
                                                                        <div class="col-lg-6 col-md-12">
                                                                            <div>
                                                                                <table class="table table-striped table-bordered nowrap">
                                                                                    <%

                                                                                        si = new SGD.Models.sgdbEntities();
                                                                                        var proc = si.documentosenviados.Where(d => d.idEnvio == idP).ToList();
                                                                                        foreach (var an in proc) {
                                                                                            nome = an.NomeDocumento.ToString();
                                                                                            string av = an.Contentype;
                                                                                            extensao = an.Extensao;
                                                                                            id = an.idDocumentosEnviados;
                                                                                    %>    
                                                                                    <tr>
                                                                                        <th class="social-label b-none p-t-0"><i class="icofont icofont-2x icofont-document-folder"></i>
                                                                                        </th>
                                                                                        <td class="social-user-name b-none p-t-0 text-muted"><%=nome %></td>
                                                                                        <td class="social-user-name b-none p-t-0 text-muted"><%=av %></td>
                                                                                          <td class="social-user-name b-none p-t-0 text-muted"><%=extensao %></td>
                                                                                            <td class="social-user-name b-none p-t-0 text-muted"><a href="WebFormDownloadDocument.aspx?id=<%=id%>" target="_blank">Download</a></td>
                                                                                        
                                                                                    </tr>

                                                                               <%    }
                                                                                         %>
                                                                                        </table>
                                                                                </div>
                                                                            </div>
                                                 </div>
                                            
                                            <%--  --%>
                                                                        </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
