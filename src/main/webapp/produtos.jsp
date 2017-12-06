<%-- 
    Document   : produtos
    Created on : 06/12/2017, 01:30:46
    Author     : jean
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br" ng-app="appProduto" ng-controller="controllerProdutos">
    <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title> Inicio </title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Lato:400,300,700" rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/css/style.css">
        <link rel="stylesheet" href="resources/css/animate.css">
        <link rel="icon" href="resources/images/icon.png">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
        <script src="https://code.angularjs.org/1.5.8/angular-route.min.js"></script>
        <script src="resources/js/controllerProdutos.js"></script>
    </head>

    <body>

        <div class="headerwrapper">
            <div id="header" class="container">
                <div class="logo"> <a href="#"><img src="resources/images/LOGO.png" alt="logo" width="165" height="74"></a> </div> <!--end of Logo-->
                <nav>
                    <ul id="navigations">
                        <li><a href="index">PRINCIPAL</a></li>
                        <li> <a href="login">ACESSO RESTRITO</a></li>
                        <li><a href="produtos">PRODUTOS</a></li>
                        <li><a href="http://interfaceusuariospedidos.herokuapp.com">CLIENTE</a></li>
                    </ul>
                </nav>
            </div> <!--end of header-->

        </div> <!-- end of headerwrapper-->
<div class="contactwrapper">

</div>

        <form class="navbar-form" ng-click="listarProdutosNome()">
            <div class="form-group" style="display:inline;">
                <div class="input-group" style="display:table;">
                    <span class="input-group-addon" style="width:1%;"><span class="glyphicon glyphicon-search"></span></span>
                    <input class="form-control" name="nome" placeholder="Pesquise Aqui o Produto" autocomplete="off" autofocus="autofocus" type="text" ng-model="nome">
                    <input class="hidden" type="submit" />
                </div>
            </div>
        </form>

        <ul class="slides">

            <li class="slide">
                <div ng-repeat="p in produtos1">
                    <div class="item">
                        <img src="resources/{{p.imageStr}}" width="150" height="150" alt="sliderimg" class="wow flipInX"
                             data-wow-delay=".8s"> 

                        <h4>{{p.nome}}</h4>
                        <h4>Preço:{{p.preco}},00</h4>
                    </div>
                </div>
        </ul>

    </body>
</body>
</html>

