<%-- 
    Document   : createCourse
    Created on : 8 Ιαν 2021, 3:24:48 μμ
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<htmlxmlns:th="http://www.thymeleaf.org">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create New User</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css"  href="../css/styles.css"/>

    </head>
    <body class="text-white">

        <div class="container my-3">

            <div class="col-md-8 mx-auto">

                <h2>Create a new Course</h2>

                <label style="color: tomato">${message}</label>

                <form:form action="${pageContext.request.contextPath}/admin/create" method="POST"  modelAttribute="course"> 
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
                        <div class="col-md-12 form-group">
                            <label>Students</label>
                            <form:select path="users" items="${users}" itemValue="uid" class="form-control" itemLabel="lastName"  multiple="true" />
                        </div>
                        <div class="col-md-12 form-group">
                            <label>Videos</label>
                            <form:select path="videosList" items="${videos}" itemValue="id" class="form-control" itemLabel="url"  multiple="true" />
                        </div>

                      
                        <div class="col-3 form-group  d-flex">  
                            <input type="submit" value="Save" class="btn btn-primary btn-block mt-3"/>
                        </div>
                    </form:form>
                        
                    <div class="col-3 form-group justify-content-between">
                    <form:form action="${pageContext.request.contextPath}/admin" method="get">
                        <input type="submit" value="Cancel" class="btn btn-danger btn-block mt-3"/>
                    </form:form>
                </div>
                    </div>
                


            </div>




        </div>


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

    </body>
</html>
