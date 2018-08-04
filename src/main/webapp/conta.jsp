<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en" ng-app="appProduto" ng-controller="controllerProdutos">
    <head>
        <meta charset="utf-8">
        <title>SISTEX</title>

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700" rel="stylesheet">

        <!-- Template Styles -->
        <link rel="stylesheet" href="resources/css/font-awesome.min.css">

        <!-- CSS Reset -->
        <link rel="stylesheet" href="resources/css/normalize.css">

        <!-- Milligram CSS minified -->
        <link rel="stylesheet" href="resources/css/milligram.min.css">

        <!-- Main Styles -->
        <link rel="stylesheet" href="resources/css/styles.css">


        <script src="resources/js/chart.min.js"></script>
        <script src="resources/js/chart-data.js"></script>
        <script src="resources/js/script.js"></script>

        <link rel="stylesheet" href="resources/css/animate.css">
        <link rel="stylesheet" href="resources/css/style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
        <script src="resources/jswow.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="resources/js/MyJQ.js"></script>
        <script src="resources/js/jquery.localScroll.min.js" type="text/javascript"></script>
        <script src="resources/js/jquery.scrollTo.min.js" type="text/javascript"></script> 
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
        <script type="text/javascript" src="resources/js/scrollfunction.js"></script>
        <script type="text/javascript" src="resources/js/wow.min.js"></script>
        <script type="text/javascript" src="resources/js/init.js"></script>
        <script type="text/javascript" src="resources/js/manipulaTela1.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Lato:400,300,700" rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="icon" href="resources/images/icon.png">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
        <script src="https://code.angularjs.org/1.5.8/angular-route.min.js"></script>
        <script src="resources/js/controllerProdutos.js"></script>
    </head>

    <body>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2 >Bem Vindo Funcionário {{funcionario.nome}}</h2>
            <form id="logoutForm" method="POST" action="${contextPath}/logout">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>

            <input type="text" class="hidden" ng-init=" rg = ${pageContext.request.userPrincipal.name}"  ng-model="rg" />
            <input type="button" class="hidden" value="atualizar" ng-init="buscarFuncionario()"/>
            <input type="button" class="hidden" value="atualizar" ng-init="listarPedidosAtuaisNovos()"/>
            <input type="button" class="hidden" value="atualizar" ng-init="listarPedidosAtuaisEntregues()"/>
            <input type="button" class="hidden" value="atualizar" ng-init="listarPedidosAtuaisPendentes()"/>
            <form>
                <input type="button" value="Logout" onclick="document.forms['logoutForm'].submit()" />

            </form>


        </c:if>



        <div class="row">
            <div id="sidebar" class="column">
                <h4>Dados do funcionário<h4>
                        <div>
                            <h5>Nome:{{funcionario.nome}}</h5>
                            <h5>RG:{{funcionario.rg}}</h5>
                            <h5>Email:{{funcionario.email}}</h5>
                            <h5>Telefone:{{funcionario.telefone}}</h5> 
                            <h5>Cargo:{{funcionario.cargo}}</h5> 
                        </div>
                        <h4>Navegação</h4>

                        <ul>
                            <li><a href="conta.jsp"><em class="fa fa-home"></em> Inicio</a></li>
                            <li><a href="controlePedidos.jsp"><em class="fa fa-forward"></em>Pedidos</a></li>
                            <li><a href="controleClientes.jsp"><em class="fa fa-forward"></em>Clientes</a></li>
                            <li><a href="controleProdutos.jsp"><em class="fa fa-forward"></em>Produtos</a></li>
                        </ul>
                        <br>
                        <br>
                        <br>
                        </div>
                        <section id="main-content" class="column column-offset-20">

                            <div class="row grid-responsive mt-2">
                                <div class="column">
                                    <div class="card">
                                        <div class="card-title">
                                            <h1 class="mt-2 wow fadeInUp" data-wow-delay="0.3s"> Novos Pedidos Do Dia</h1>
                                            <div class="clearfix"></div>
                                        </div>
                                        <ul class="slides">

                                            <li class="slide alinha3">
                                                <div ng-repeat="pedidoNovo in pedidosNovos">
                                                    <div class="card-block">
                                                        <div class="mt-1">                                                
                                                            <div class="float-left ml-1">
                                                                <h4>ID DO PEDIDO: {{pedidoNovo.idpedido}}</h4>
                                                                <h4 class="m-0">DESCRIÇÃO :<span class="text-muted">{{pedidoNovo.descricao}}</span></h4>
                                                                <h4 class="text-small text-muted">Preço: {{pedidoNovo.precototal}},00</h4>
                                                                <h4 class="text-small text-muted">STATUS: {{pedidoNovo.status}}</h4>
                                                            </div>
                                                            <div class="clearfix">
                                                                <hr class="m-0 mb-2" />
                                                                <form>
                                                                    <input type="button" value="Cancelar" ng-click="cancelarPedido(pedidoNovo)"/>
                                                                    <input type="button" value="Atribuir" ng-click="atribuirPedido(pedidoNovo, funcionario)">
                                                                    <input type="button" value="Confirmar Entrega" ng-click="confirmarEntrega(pedidoNovo, funcionario)">
                                                                </form>
                                                            </div>


                                                        </div>
                                                    </div>
                                                </div>
                                        </ul>

                                    </div>
                                    
                                    
                                    
                                        <div class="card">
                                        <div class="card-title">
                                            <h1 class="mt-2 wow fadeInUp" data-wow-delay="0.3s"> Pedidos Pendentes No Dia</h1>
                                            <div class="clearfix"></div>
                                        </div>
                                        <ul class="slides">

                                            <li class="slide alinha3">
                                                <div ng-repeat="pedidoPendente in pedidosPendentes">
                                                    <div class="card-block">
                                                        <div class="mt-1">                                                
                                                            <div class="float-left ml-1">
                                                                <h4>ID DO PEDIDO: {{pedidoPendente.idpedido}}</h4>
                                                                <h4 class="m-0">DESCRIÇÃO :<span class="text-muted">{{pedidoPendente.descricao}}</span></h4>
                                                                <h4 class="text-small text-muted">Preço: {{pedidoPendente.precototal}},00</h4>
                                                                <h4 class="text-small text-muted">STATUS: {{pedidoPendente.status}}</h4>
                                                            </div>
                                                            <div class="clearfix">
                                                                <hr class="m-0 mb-2" />
                                                                <form>
                                                                    <input type="button" value="Cancelar" ng-click="cancelarPedido(pedidoPendente)"/>
                                                                    <input type="button" value="Confirmar Entrega" ng-click="confirmarPedido(pedidoPendente, funcionario)">
                                                                </form>
                                                            </div>


                                                        </div>
                                                    </div>
                                                </div>
                                        </ul>

                                    </div>
                                    
                                    
                                        <div class="card">
                                        <div class="card-title">
                                            <h1 class="mt-2 wow fadeInUp" data-wow-delay="0.3s"> Pedidos Entregues No dia</h1>
                                            <div class="clearfix"></div>
                                        </div>
                                        <ul class="slides">

                                            <li class="slide alinha3">
                                                <div ng-repeat="pedidoEntregue in pedidosEntregues">
                                                    <div class="card-block">
                                                        <br>
                                                        <br>
                                                        <div class="mt-1">                                                
                                                            <div class="float-left ml-1">
                                                                <h4>ID DO PEDIDO: {{pedidoEntregue.idpedido}}</h4>
                                                                <h4 class="m-0">DESCRIÇÃO :<span class="text-muted">{{pedidoEntregue.descricao}}</span></h4>
                                                                <h4 class="text-small text-muted">PREÇO: {{pedidoEntregue.precototal}},00</h4>
                                                                <h4 class="text-small text-muted">STATUS: {{pedidoEntregue.status}}</h4>
                                                                <h4 class="text-small text-muted">DATA DO PEDIDO {{pedidoEntregue.datapedido}}</h4>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                        </ul>

                                    </div>
                                    
                                </div>

                            </div>
                        </section>
                        </div>

                        </body>
                        </html> 
