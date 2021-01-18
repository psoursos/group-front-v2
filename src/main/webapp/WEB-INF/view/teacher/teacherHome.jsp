
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<htmlxmlns:th="http://www.thymeleaf.org">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="@{datatables.css}"/>
    </head>
    <body>

        <h1>This is teacher page!</h1>
        <h2>Courses</h2>
        <a href="${pageContext.request.contextPath}/teacher/create">Create a new Course</a>

        <div class="container">
            <div class="row">
                <div class="col-lg-10 mt-5 mb-5">

            <form th:action="@{/}">
                Filter: <input type="text" name="keyword" id="keyword" size="50" th:value="${keyword}" required />
                &nbsp;
                <input type="submit" value="Search" />
                &nbsp;
                <!--<input type="button" value="Clear" id="btnClear" onclick="clearSearch()" />-->
            </form>
                    <table class="table table-bordered table-responsive" style="width: 100%">
                        <thead>
                            <tr >
                                <th>ID</th>
                                <th >Title</th>
                                <th >Description</th>
                                <th >Stream</th>
                                <th >Price</th>
                            </tr>
                        </thead>
                        <tbody> 
                            <c:forEach items="${courses}" var="cu">
                                <tr>
                                    <td>${cu.id}</td>
                                    <td>${cu.title}</td>
                                    <td>${cu.description}</td>
                                    <td>${cu.stream}</td>
                                    <td>${cu.price}</td>
                            </c:forEach>
                        </tbody>
                    </table>
                    <p>
                        <a href="${pageContext.request.contextPath}/">Back</a>
                    </p>
                </div>
            </div>
        </div>

        <script th:src="@{/webjars/jquery/jquery.min.js}"></script>
        <script th:src="@{/webjars/popper.js/umd/popper.min.js}"></script>
        <script th:src="@{/webjars/bootstrap/js/bootstrap.min.js}"></script>
        <script th:src="@{datatables.js}"></script>
        <script type="text/javascript">
            function clearSearch() {
                window.location = "[[@{/admin}]]";
            }
            
        </script><div class="open_grepper_editor" title="Edit & Save To Grepper"></div>
    </body>
</html>
