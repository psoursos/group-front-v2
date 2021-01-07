<%-- 
    Document   : createUser
    Created on : 27 Δεκ 2020, 12:07:54 μμ
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <!--    <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>User Form Page</title>
        </head>-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create New User</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    </head>
    <body>

        <div class="container my-3">
            <div class="row">
                <div class="col-md-8 mx-auto">
                    <h2>Sign Up and Start Learning!</h2>
                    <br/>
                    <label style="color: tomato">${message}</label>
                    <br/>
                    <form:form action="${pageContext.request.contextPath}/create" method="POST"  modelAttribute="user"> 
                        <div class="form-row">
                            <div class="col-md-6 form-group">
                                <label>First Name</label>
                                <form:input path="firstName" class="form-control" placeholder="First Name"/>
                            </div>
                            <div class="col-md-6 form-group">
                                <label>Last Name</label>
                                <form:input path="lastName" class="form-control" placeholder="Last Name"/>
                            </div>
                            <div class="col-md-6 form-group">
                                <label>Email</label>
                                <form:input path="email" class="form-control" placeholder="Email Address"/>
                            </div>
                            <div class="col-md-6 form-group">
                                <label>Username</label>
                                <form:input path="username" class="form-control" placeholder="Username"/>
                            </div>
                            <div class="col-md-6 form-group">
                                <label>Password</label>
                                <form:input path="passwd" class="form-control" placeholder="Password"/>
                            </div>
                            <div class="col-md-6 form-group">
                                <label>Role</label>
                                <form:select path="rolesList" items="${roloi}" itemValue="rid" class="form-control" itemLabel="role" multiple="false"/>
                            </div>

                            <br/>
                            <!--<form:input path="passwd" placeholder="Confirm Password"/>
                          <br/>-->

                            <br/>
                        </div>
                        <input type="submit" value="Save" class="btn btn-primary btn-block mt-3"/>
                    </div>
                </div>
            </div>
        </form:form>
    </body>
</html>
