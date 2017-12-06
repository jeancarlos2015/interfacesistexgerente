<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en" >
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
        <script src="resources/js/"></script>
    </head>

    <body>
        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <form id="logoutForm" method="POST" action="${contextPath}/logout" class="cursor">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>

            <h2>Bem Vindo ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Sair</a></h2>

        </c:if>
        <div class="navbar">
            <div class="row">
                <div class="column column-30">
                    <div class="user-section"><a href="#">
                            <img src="http://via.placeholder.com/50x50" alt="profile photo" class="circle float-left profile-photo" width="50" height="auto">
                            <div class="username">
                                <h4>Pedidos</h4>
                                <!--                                <p>Administrador</p>-->
                            </div>
                        </a></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div id="sidebar" class="column">
                <h5>Navegação</h5>
                <ul>
                    <li><a href="#"><em class="fa fa-home"></em> Inicio</a></li>

                    <li><a href="#tables"><em class="fa fa-forward"></em>Pedidos</a></li>
                    <li><a href="#grid"><em class="fa fa-forward"></em>Produtos</a></li>
                </ul>
            </div>
            <section id="main-content" class="column column-offset-20">
                <h5 class="mt-2">Informações</h5><a class="anchor" name="widgets"></a>
                <div class="row grid-responsive mt-1">
                    <div class="column">
                        <div class="card">
                            <div class="card-title">
                                <h2 class="float-left">Novos Pedidos</h2>
                                <div class="badge background-primary float-right">36</div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="card-block">
                                <div class="mt-1">
                                    <img src="http://via.placeholder.com/45x45" alt="profile photo" class="circle float-left profile-photo" width="45" height="auto">
                                    <div class="float-left ml-1">
                                        <p class="m-0"><strong>Pedido 1</strong> <span class="text-muted">Frango Frito, Macarrão, Feijão Tropeiro</span></p>
                                        <p class="text-small text-muted">Cliente Fulano de tal</p>
                                        <p class="text-small text-muted">Pendente</p>
                                    </div>
                                    <div class="clearfix"></div>
                                    <hr class="m-0 mb-2" />
                                </div>
                                <div class="mt-1">
                                    <img src="http://via.placeholder.com/45x45" alt="profile photo" class="circle float-left profile-photo" width="45" height="auto">
                                    <div class="float-left ml-1">
                                        <p class="m-0"><strong>Sam Davidson</strong> <span class="text-muted">just replied to your message</span></p>
                                        <p class="text-small text-muted">12 hours ago</p>
                                    </div>
                                    <div class="clearfix"></div>
                                    <hr class="m-0 mb-2" />
                                </div>
                                <div class="mt-1">
                                    <img src="http://via.placeholder.com/45x45" alt="profile photo" class="circle float-left profile-photo" width="45" height="auto">
                                    <div class="float-left ml-1">
                                        <p class="m-0"><strong>Kelly Johnson</strong> <span class="text-muted">changed her status</span></p>
                                        <p class="text-small text-muted">2 days ago</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </section>
        </div>

    </body>
</html> 
