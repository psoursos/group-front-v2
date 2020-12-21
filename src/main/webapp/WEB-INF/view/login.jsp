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
        <title>Login Page</title>
    </head>

    <body>
       


        <h3>Please Login</h3>
            <c:if test="${param.error!= null}" >
                <strong>Credentials are not correct!!!</strong>
            </c:if>
                  <c:if test="${param.logout!= null}" >
                <strong>You logged out succesfully !!</strong>
            </c:if>
        <form:form action="${pageContext.request.contextPath}/authenticate" method="Post">
            <p>
                Username : <input type="text" name="username"/>
            </p>
            <p>
                Password : <input type="password" name="password"/>
            </p>
            <p>
                <input type="submit" value="Login"/>
            </p>
            
            <p>
                Don't have an account? <a href="${pageContext.request.contextPath}/create">Sing up</a>
            </p>
        </form:form>


    </body>
</html>
