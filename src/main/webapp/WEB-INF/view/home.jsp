
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Home Page</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    </head>
  
    <body>
        
        <security:authorize access="hasRole('ADMIN')">
            <div class="container my-3">
                <h1>Welcome to Admin Home Page</h1>
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
