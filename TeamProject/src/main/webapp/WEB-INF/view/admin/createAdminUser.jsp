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
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css"  href="css/styles.css"/>

    </head>
    <body>

        <div class="container my-3">
            <div class="row">
                <div class="col-md-8 mx-auto">
                    <h2>Create new User!</h2>
                    <br/>
                    <label style="color: tomato">${message}</label>
                    <br/>
                    <form:form action="${pageContext.request.contextPath}/admin/createUser" method="POST"  modelAttribute="user"> 
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
                                <form:select path="role" items="${roloi}" itemValue="rid" class="form-control" itemLabel="role" multiple="false"/>
                            </div>

                            <br/>
                            <!--<form:input path="passwd" placeholder="Confirm Password"/>
                          <br/>-->

                            <br/>
                            <div class="col-md-3 form-group">
                                <input type="submit" value="Save" class="btn btn-primary btn-block mt-3"/>
                            </form:form>
                        </div>

                    <div class="col-md-3 form-group">
                        <form:form action="${pageContext.request.contextPath}/admin" method="get">
                            <input type="submit" value="Cancel" class="btn btn-primary btn-block mt-3"/>
                        </form:form>
                    </div>
                </div>


            </div>
        </div>
    </div>
</body>
</html>
