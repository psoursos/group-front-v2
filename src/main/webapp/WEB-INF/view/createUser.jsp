<%-- 
    Document   : createUser
    Created on : 27 Δεκ 2020, 12:07:54 μμ
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Form Page</title>
    </head>
    <body>
        <h1>Create User </h1>
        <form:form action="${pageContext.request.contextPath}/create" method="post"  modelAttribute="user"> 
            <form:input path="firstName" placeholder="First Name"/>
            <br/>
              <form:input path="lastName" placeholder="Last Name"/>
              <br/>
               <form:input path="email" placeholder="Email Address"/>
              <br/>
               <form:input path="username" placeholder="Username"/>
              <br/>
                <form:input path="passwd" placeholder="New password"/>
              <br/>
               <form:select path="rolesList" items="${roloi}" itemValue="rid" itemLabel="role" multiple="false"/>
            <br/>
            <input type="submit" value="Save"/>
        </form:form>
         
            
        
    </body>
</html>
