<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="stylesheet" href="resources/css/style.css">
        <link rel="stylesheet" href="resources/css/animate.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
        <script src="resources/jswow.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="resources/js/MyJQ.js"></script>
        <script src="resources/js/jquery.localScroll.min.js" type="text/javascript"></script>
        <script src="resources/js/jquery.scrollTo.min.js" type="text/javascript"></script> 

        <script type="text/javascript" src="resources/js/scrollfunction.js"></script>
        <script type="text/javascript" src="resources/js/wow.min.js"></script>
        <script type="text/javascript" src="resources/js/init.js"></script>
        <script type="text/javascript" src="resources/js/manipulaTela1.js"></script>
    </head>

    <body>
        <div class="headerwrapper">
            <div id="header" class="container">
                <div class="logo"> <a href="#"><img src="resources/images/LOGO.png" alt="logo" width="165" height="74"></a> </div> <!--end of Logo-->
                <nav>
                    <ul id="navigations">
                        <li><a href="index">PRINCIPAL</a></li>
                        <li> <a href="login">ACESSO RESTRITO</a></li>
                        <li> <a href="produtos">PRODUTOS</a></li>
                        <li><a href="http://interfaceusuariospedidos.herokuapp.com">CLIENTE</a></li>
                    </ul>
                </nav>
            </div> <!--end of header-->

        </div> <!-- end of headerwrapper-->


        <div class="bookonlinewrapper">
            <div class="container" id="bookonline">
                <form method="POST" action="${contextPath}/login" class="container" id="bookonline">
                    <h3 class="wow fadeInUp" data-wow-delay="0.3s"> SOMENTE PARA FUNCIONÁRIOS</h3>

                    <div class="form-group ${error != null ? 'has-error' : ''}">
                        <br>
                        <br>
                        <span>${message}</span>
                        <br>
                        <input name="username" type="text" class="name wow zoomIn" placeholder="Username"
                               autofocus="true"/>
                        <input name="password" type="password" class="name wow zoomIn" placeholder="Password"/>
                        <br>
                        <br>
                        <span>${error}</span>
                        <br>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <button class="booknow wow fadeInUp" type="submit">Entrar</button>
                    </div>

                </form>

                <h3> OU </h3>

                <form action="${contextPath}/registration">
                    <button class="booknow wow fadeInUp" > Cadastre um novo Login</button>
                </form>

            </div>

        </div>
        <!-- /container -->



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

            </footer> <!-- end of footer-->

        </div> <!-- end of footer-->

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
