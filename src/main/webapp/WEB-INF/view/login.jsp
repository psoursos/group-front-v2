<%-- 
    Document   : login
    Created on : 24 Νοε 2020, 2:56:15 μμ
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    </head>



    <style>

        h1{
            background-color:rgb(240, 235, 240);
            text-align:center;
            position:fixed;
            width:100%;
            top:0px;
            left:0px;
            border-top:0px;
            padding-top:0px;
            margin:0px;
            color: black;
            font-family: sans-serif;
        }

        #login{
            text-align:right;
            position:fixed;
            width:100%;
            top:10px;
            right:5px;	
        }

        #home{
            text-align:right;
            position:fixed;
            width:100%;
            top:10px;
            right:70px;	
        }

        /*        form{
                    font-size: 20px;
                    text-align: center;
                }*/
    </style>
    <body>
        <h1>e - kpaideush
            <div> Ένα ξεχωριστό διαδικτυακό σχολείο </div> 
            <!--		<button id="login" style="width:60px; height:30px; font-size:16px;"> <a href="#1"> LOGIN </a> </button>
                            <button id="home" style="width:60px; height:30px; font-size:16px;"> <a href="#1"> HOME </a> </button>-->
        </h1>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <!--        <div align="center">-->
        <div class="container my-3">
<div class="mb-3">
<!--            <div class="row">-->
                <div class="col-md-1 mx-auto">
                    <br/>
                    <label style="color: tomato">${message}</label>
                    <br/>
                    <form:form action="${pageContext.request.contextPath}/authenticate" method="POST" modelAttribute="user"  > 
                        <!--<div class="form-row">-->
                            <div class="col-md-1 form-group">
                                <label>Username</label>
                                <input type="text" placeholder="Username" name="username"><br>
                            </div>
                            <div class="col-md-1 form-group"> 
                                <label>Password</label>
                                <input type="password" placeholder="Password" name="password"><br>
                                <br/>
                            </div>
                            <input type="submit" value="Login" class="btn btn-primary mb-3 btn-lg" data-toggle="button" aria-pressed="false" autocomplete="off" />
<!--                        </div>-->
                    </div>
                </div>
                <div align="center"> 
                    <a href="${pageContext.request.contextPath}/create">Don't have account? Sing up</a>  
                </div>      
            </form:form>
        </div>
    </div>
    <div align="center">   
        <!--<h3>Please Login</h3>-->
        <c:if test="${param.error!= null}" >
            <strong>Credentials are not correct!!!</strong>
        </c:if>
        <c:if test="${param.logout!= null}" >
            <strong>You logged out succesfully !!</strong>
        </c:if>
    </div>








</body>
</html>
