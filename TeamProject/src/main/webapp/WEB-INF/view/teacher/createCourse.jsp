<%-- 
    Document   : createCourse
    Created on : 8 Ιαν 2021, 3:24:48 μμ
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
                    <h2>Create a new Course!!</h2>
                    <br/>
                    <label style="color: tomato">${message}</label>
                    <br/>
                    <form:form action="${pageContext.request.contextPath}/teacher/create" method="POST"  modelAttribute="course"> 
                        <div class="form-row">
                            <div class="col-md-6 form-group">
                                <label>Title</label>
                                <form:input path="title" class="form-control" placeholder="Title"/>
                            </div>
                            <div class="col-md-6 form-group">
                                <label>Description</label>
                                <form:input path="description" class="form-control" placeholder="Description"/>
                            </div>
                            <div class="col-md-6 form-group">
                                <label>Stream</label>
                                <form:input path="stream" class="form-control" placeholder="Stream"/>
                            </div>
                            <div class="col-md-6 form-group">
                                <label>Price</label>
                                <form:input path="price" class="form-control" type="number" placeholder="Price"/>
                            </div>
                            <br/>  
                            <br/>
                            <div class="col-md-6 form-group">
                                <input type="submit" value="Save" class="btn btn-primary btn-block mt-3"/>
                                </form:form>
                            </div>
                            <div class="col-md-6 form-group">
                                <form:form action="${pageContext.request.contextPath}/teacher" method="get">
                                    <input type="submit" value="Cancel" class="btn btn-primary btn-block mt-3"/>
                                </form:form>
                            </div>
                        </div>
                        
                        
                        
                    </div>
                </div>
            </div>
        
    </body>
</html>
