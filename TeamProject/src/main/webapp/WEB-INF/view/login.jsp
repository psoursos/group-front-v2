<%-- 
    Document   : login
    Created on : 24 Νοε 2020, 2:56:15 μμ
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>


<htmlxmlns:th="http://www.thymeleaf.org">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css"  href="css/styles.css"/>
        <style>
            h1{
    font-size: 5rem;
    color: whitesmoke;
}
        </style>
    </head>
    <body>
        <section class="container  h-100 container-fluid">
             <div class="row">
            <header class="text-center col-12">
                <!-- <img class="logo" src="./logo/e-logo.png"> -->
                <h1>e - kpaideush </h1>
        </div>
        <div class="row text-center ">
            <h2 class="text-uppercase col-12"> ενα ξεχωριστο διαδικτυακο σχολειο</h2>
        </div>
        </header>

            <section class="row buffer">
                <div class="col-md-12 my-5">
                    <!-- <h2 align="center"> Ένα ξεχωριστό διαδικτυακό σχολείο</h2> -->
                </div>
            </section>

            <section class="row  d-flex justify-content-center">
                <!-- <div class="mb-3"> -->
                <!--            <div class="row">-->
                <section class="col-12 col-sm-6 col-md-3">


                    <div class="form-container">

                        <div class="form-group text-center">
                            <label class="form-title">Login</label>
                        </div>

                        <!-- Login feedback prepei na antikatasta8ei me alert apo bootstrap -->
<!--                        <label style="color: tomato">${message}</label> -->


                       <form:form action="${pageContext.request.contextPath}/authenticate" method="POST" modelAttribute="user"  > 

                            <div class="form-group">
                                <label >Username</label>
                                <input class="form-control" type="text"  placeholder="Username" name="username" > 
                            </div>
                            <div class="form-group">
                                <label >Password</label>
                                <input class="form-control" type="password"  placeholder="Password" name="password" >
                            </div>

                            <div class="form-group">
                                <input type="submit" value="Sign in" class="btn btn-primary btn-block mt-3" data-toggle="button"/>
                            </div>

                        </form:form >
                        
                        <div class="row text-center">
                            <a href="${pageContext.request.contextPath}/create">Don't have account? Sing up</a>  
                        </div>
                    </div>
                </section>
            </section>
            <div class="buffer">

            </div>
        </div>
    </div>
    <div class="err-message col-12 text-center">  
        <!--<h3>Please Login</h3>-->
        <c:if test="${param.error!= null}" >
            <strong>Credentials are not correct!!!</strong>
        </c:if>
        <c:if test="${param.logout!= null}" >
            <strong>You logged out succesfully !!</strong>
        </c:if>
    </div>

</section>










</body>
</html>
