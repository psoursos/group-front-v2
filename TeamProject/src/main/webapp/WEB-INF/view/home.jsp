
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Home Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css"  href="css/styles.css"/>
    </head>
  
    <body class="text-white">
        
        <security:authorize access="hasRole('ADMIN')">
            <div class="container my-3">
                <h1 class="text-white"style="z-index: 1">Welcome to Admin Home Page</h1>
                <hr>
                <div class="row">
                    <div class="col-md-8 mx-auto">
                        <div class="form-row">
                            <div class="col-md-6 form-group">
                                <label>Username:  <b><security:authentication property="principal.username"/></b></label>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-6 form-group">
                                <label>Your role is: <b><security:authentication property="principal.authorities" /></b></label>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-6 form-group">
                                <form:form action="${pageContext.request.contextPath}/admin" method="GET"> 
                                    <input type="submit" value="Admin Page" class="btn btn-primary btn-block mt-3"/>                                   
                                </form:form>
                            </div>
                            <div class="col-md-6 form-group">
                                <form:form action="${pageContext.request.contextPath}/logout" method="post">
                                    <input type="submit" value="Logout" class="btn btn-primary btn-block mt-3"/>
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>
        </security:authorize>

        <security:authorize access="hasRole('TEACHER')">
            <div class="container my-3">
                <h1>Welcome to Teacher Home Page</h1>
                <hr>
                <div class="row">
                    <div class="col-md-8 mx-auto">
                        <div class="form-row">
                            <div class="col-md-6 form-group">
                                <label>Username:  <b><security:authentication property="principal.username"/></b></label>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-6 form-group">
                                <label>Your role is: <b><security:authentication property="principal.authorities" /></b></label>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-6 form-group">
                                <form:form action="${pageContext.request.contextPath}/teacher" method="GET"> 
                                    <input type="submit" value="Teacher Page" class="btn btn-primary btn-block mt-3"/>                                   
                                </form:form>
                            </div>
                            <div class="col-md-6 form-group">
                                <form:form action="${pageContext.request.contextPath}/logout" method="post">
                                    <input type="submit" value="Logout" class="btn btn-primary btn-block mt-3"/>
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>
                
        </security:authorize>

        <security:authorize access="hasRole('STUDENT')">
            <div class="container my-3">
                <h1>Welcome to Student Home Page</h1>
                <hr>
                <div class="row">
                    <div class="col-md-8 mx-auto">
                        <div class="form-row">
                            <div class="col-md-6 form-group">
                                <label>Username:  <b><security:authentication property="principal.username"/></b></label>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-6 form-group">
                                <label>Your role is: <b><security:authentication property="principal.authorities" /></b></label>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-6 form-group">
                                <form:form action="${pageContext.request.contextPath}/student" method="GET"> 
                                    <input type="submit" value="Student Page" class="btn btn-primary btn-block mt-3"/>                                   
                                </form:form>
                            </div>
                            <div class="col-md-6 form-group">
                                <form:form action="${pageContext.request.contextPath}/logout" method="post">
                                    <input type="submit" value="Logout" class="btn btn-primary btn-block mt-3"/>
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>
                
        </security:authorize>

    </body>
</html>
