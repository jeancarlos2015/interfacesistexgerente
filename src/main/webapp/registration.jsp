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
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
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
                        <li> <a href="login">ACESSO</a></li>
                        <li><a href="produtos">PRODUTOS</a></li>
                        <li><a href="https://interfacegerentefornecedor.herokuapp.com">FUNCIONÁRIO</a></li>
                    </ul>
                </nav>  
            </div> <!--end of header-->

        </div> <!-- end of headerwrapper-->

        <div class="bookonlinewrapper container">
            <div class="container" id="bookonline">
                <h3 class="wow fadeInUp" data-wow-delay="0.3s">CRIE O SEU LOGIN PRIMEIRAMENTE</h3>
            </div>

            <form:form method="POST" modelAttribute="userForm" class="form-signin">


                <spring:bind path="username">
                    <div class="form-group ${status.error ? 'has-error' : ''} alinha">
                        <form:input type="text" path="username" class="form-control name" placeholder="RG Só Numeros" required="" name="numbers" pattern="[0-9]+$"
                                    autofocus="true"></form:input>
                        <form:errors path="username"></form:errors>
                        </div>
                </spring:bind>

                <spring:bind path="password">
                    <div class="form-group ${status.error ? 'has-error' : ''} alinha">
                        <form:input type="password" path="password" class="form-control name"  placeholder="Password"></form:input>
                        <form:errors path="password"></form:errors>
                        </div>
                </spring:bind>

                <spring:bind path="passwordConfirm">
                    <div class="form-group ${status.error ? 'has-error' : ''} alinha">
                        <form:input type="password" path="passwordConfirm" class="form-control name"
                                    placeholder="Confirm your password"></form:input>
                        <form:errors path="passwordConfirm"></form:errors>
                        </div>
                </spring:bind>

                <button class="booknow wow fadeInUp alinha2" type="submit">Cadastrar</button>

            </form:form>
        </div>
        <!-- /container -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
    </body>
</html>
