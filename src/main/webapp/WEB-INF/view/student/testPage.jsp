<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
             <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css"  href="../css/styles.css"/>
    </head>

    <body>
        <section class="container-fluid  h-100  text-white">

            <nav class="row navbar navbar-expand-lg navbar-light bg-light">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03"
                        aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath}/student/loginPage">e-kpaideush</a>

                <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                        <li class="nav-item active">
                            <a class="nav-link" href="./studentHome.html">My courses </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Store<span class="sr-only">(current)</span></a>
                        </li>
                        <!-- <li class="nav-item">
                            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                        </li> -->
                    </ul>
                    <form class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>
                    <div class="dropdown my-account ml-1">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <security:authentication property="principal.username"/>
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="#">Settings</a>
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/student/logout/loginPage">Logout</a>
                        </div>
                    </div>
                </div>
            </nav>

            <section class="row mt-2">
                <h1 z=-1>Buy a Course ...!</h1>
            </section>

            <!-- <section class="row">
                <a href="${pageContext.request.contextPath}/">Back</a>
            </section> -->

            <!-- <div class="row buffer mt-5"></div>
            <div class="row buffer mt-5"></div> -->


            <section class="courses d-flex  ">

                <!--Carousel Wrapper-->
                <div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">

                    <!--Controls-->
                    <!-- <div class="controls-top"> -->

                    <a class="carousel-control-prev" href="#multi-item-example" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>

                    </a>

                    <a class="carousel-control-next" href="#multi-item-example" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                    <!-- </div> -->
                    <!--/.Controls-->



                    <!--Slides-->
                    <div class="carousel-inner" role="listbox">

                        <!--First slide-->
                        <div class="carousel-item active">  
                            <c:forEach items="${courses}" var="cu">
                                <div class="col-md-4" style="float:left">
                                    <div class="card mb-2">
                                        <div class="card-body">
                                            <h4 class="card-title"></h4>
                                            <p class="card-text text-dark"> Course id: ${cu.id}</p>
                                            <p class="card-text text-dark"> Title : ${cu.title}</p>

                                        </div>
                                        <a class="btn btn-primary" href="${pageContext.request.contextPath}/student/find?id=${cu.id}">View course</a>

                                    </div>

                                </div>

                            </c:forEach>

                        </div>


                    </div>
                    <!--/.Second slide-->



                </div> 
                <!--/.Slides-
                ->

     </div>
                <!--/.Carousel Wrapper-->

            </section>

        </section>





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