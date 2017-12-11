<%-- 
    Document   : index
    Created on : 06/12/2017, 01:30:08
    Author     : jean
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html> 
<html lang="en" ng-app="appProduto" ng-controller="controllerProdutos">
    <head>
        <title>Restaurante Das Cidas</title>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <script src="resources/js/jquery.js"></script> 
        <script src="resources/js/jquery.glide.js"></script>

        <link rel="stylesheet" href="resources/css/style.css">
        <link rel="stylesheet" href="resources/css/animate.css">

        <script type="text/javascript" src="resources/js/MyJQ.js"></script>
        <script src="resources/js/jquery.localScroll.min.js" type="text/javascript"></script>
        <script src="resources/js/jquery.scrollTo.min.js" type="text/javascript"></script> 
        <script src="resources/js/wow.min.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>


        <!-- scroll function -->
        <script type="text/javascript" src="resources/js/scrollfunction.js"></script>
        <script type="text/javascript" src="resources/js/wow.min.js"></script>
        <script type="text/javascript" src="resources/js/init.js"></script>
        <script type="text/javascript" src="resources/js/manipulaTela1.js"></script>
        <script src="resources/js/controllerProdutos.js" type="text/javascript"></script> 
    </head>
    <body  >

        <!--============ Navigation ============-->

        <div class="headerwrapper">
            <div id="header" class="container">
                <div class="logo"> <a href="#"><img src="resources/images/LOGO.png" alt="logo" width="165" height="74"></a> </div> <!--end of Logo-->
                <nav>
                    <ul id="navigations">
                        <li><a href="index">PRINCIPAL</a></li>
                        <li> <a href="login">ACESSO</a></li>
                        <li><a href="produtos">PRODUTOS</a></li>
                        <li><a href="http://interfaceusuariospedidos.herokuapp.com">CLIENTE</a></li>
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li><a href="http://interfacegerentefornecedor.herokuapp.com/conta.jsp">Conta</a></li>
                        </c:if>
                    </ul>
                </nav>
            </div> <!--end of header-->

        </div> <!-- end of headerwrapper-->




        <!--============ Slider ============-->


        <div class="sliderwrapper">
            <div id="slider" class="container">
                <div class="slider" ng-init="listarProdutos()">
                    <ul class="slides" ng-repeat="p in produtos">
                        <li class="slide">
                            <h5 class="wow fadeInDown" data-wow-delay="0.8s">{{p.nome}}</h5>
                            <p class="wow fadeInUp" data-wow-delay="0.8s">{{p.descricao}}</p>
                            <img src="resources/{{p.imageStr}}" width="150" height="150" alt="sliderimg" class="wow flipInX"
                                 data-wow-delay=".8s"/> 
                        </li>
                    </ul>
                </div>
            </div> <!-- End of Slider-->
        </div> <!-- end of sliderwrapper-->



        <!--============ Best Dishes ============-->


        <div class="bestdisheswrapper" >
            <div id="bestdishes" class="container">

                <h2 class="wow fadeInUp" data-wow-delay="0.3s">MELHORES PRATOS</h2>
                <div class="slider">
                    <ul class="slides">

                        <li class="slide">
                            <div ng-repeat="p in produtos">
                                <div class="item">
                                    <img src="resources/{{p.imageStr}}" width="100" height="100" alt="sliderimg" class="wow flipInX"
                                         data-wow-delay=".8s"> 

                                    <h3>{{p.nome}}</h3>
                                    <h3>Preço:{{p.preco}},00</h3>
                                </div>
                            </div>
                    </ul>
                </div> <!-- end of slider-->
            </div> <!-- end of besth dishes-->
        </div> <!-- end of bestdishes wrapper-->

        <!--============ FOOTER ============-->


        <div class="footerwrapper">
            <footer class="container">
                <div class="socialize">

                    <h2>Redes Sociais</h2>
                    <div class="socialimgs">
                        <a href="https://www.facebook.com/Mido.HHH"><img src="resources/images/fb.png" width="68" height="68" class="facebook"
                                                                         alt="fb"></a>
                        <a href="https://twitter.com/Mido_A7X"><img src="resources/images/twitter.png" width="68" height="68" class="twitter"
                                                                    alt="twitter"></a>
                        <a href="#"><img src="resources/images/youtube.png" width="68" height="69" class="youtube" alt="youtube"></a>
                        <a href="#"><img src="resources/images/g+.png" width="68" height="68" class="google" alt="g+"></a>
                        <a href="#"><img src="resources/images/message.png" width="68" height="68" class="message" alt="message"></a>
                    </div> <!--end of social imgs-->

                </div>

                <!--
                                <div class="sendfeedback">
                                    <h2>Gostou da comida?</h2>
                                    <form>
                                        <h6>Seu Nome:</h6>
                                        <input type="text" class="yourname" >
                                        <h6>Telefone :</h6>
                                        <input type="text" class="mobilenumber">
                                        <h6>Sugestão :</h6>
                                        <textarea></textarea>
                
                                        <button>Enviar </button>
                
                
                
                                    </form>
                
                                </div>  end of feedback
                -->



            </footer> <!-- end of footer-->

        </div> <!-- end of footer-->




        <!--============ COPYRIGHTS ============-->


        <div class="copyrightswrapper">
            <div id="copyrights" class="container">

                <p>Copyright 2014 <a href="https://www.facebook.com/Mido.HHH"> Jean Carlos Penas </a> All Rights Reserved</p>

            </div> <!-- end of copyrights-->
        </div> <!-- end of website-->




        <div class="fixedsocial">
            <a href="https://www.facebook.com/Mido.HHH"><img src="resources/images/facebook.png" width="20" height="20" alt="fb"> </a>
            <a href="https://www.behance.net/Mido_HHH"><img src="resources/images/behance.png" width="20" height="20" alt="behance"> </a>




        </div>




    </body>

</html>