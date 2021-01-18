<%-- 
    Document   : videos
    Created on : Jan 15, 2021, 1:45:05 PM
    Author     : ntsia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <% String courseId = request.getParameter("courseId"); %>
        <% int cid = Integer.parseInt(courseId); %>
        <% String title = request.getParameter("course"); %>

       
      
  

<!--        <div id="player">
            video player
        </div>-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Course Videos</title>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
       <link rel="stylesheet" type="text/css"  href="../css/learning.css"/>
    </head>

    
    
    <body class="bg-dark">
           <div class="row title-container d-flex justify-content-center text-white"> 
        <h1>${title}</h1>
    </div>
        
        <div class="main-container">

          <a  href="${pageContext.request.contextPath}/student/mycourses">Back</a>
        <nav class=" sidebar col-2 h-100 mt-5">
            <div class="sidebar-header">
                <h3>Chapter 1</h3>
            </div>
            
              <ul class="list-unstyled components">
                <p>Dummy Heading</p>

                
                    <c:forEach items="${videos}" var="video">
                        <li>
                            <button type="button" onclick="myFunction(value)" name="video_btn" value="${video.url}">
                               ${video.title}
                            </button>
                        </li>
                    </c:forEach>  

        </nav>
                <div class="main-content mt-5">
            <section class=" video-section col-10 bg-info">

                <!-- 21:9 aspect ratio -->
                <div class="player" >
                    <iframe id="player" class="embed-responsive" src=" https://www.youtube.com/embed/eIrMbAQSU34" width="1280"
                        height="720" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>

                </div>
                 </section>

            <div id="text-section" class="text-section col-10 bg-white p-2">
                        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Qui amet veritatis pariatur quae
            </div>

            <section class="row d-flex justify-content-center ">
                <nav aria-label="page-navigation col">
                    <ul class="pagination pagination-sm ">
                        <li class="page-item active" aria-current="page">
                            <span class="page-link">1
                            <span class="sr-only ">(current)</span>
                            </span>
                        </li>
 
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                    </ul>
                </nav>
            </section>


        </div>





    </div>
    ${video.url}

        <script>
            function myFunction(e,z){
//            var url = e.currentTarget.value();
            var url =  e;
            var des = z;
            console.log("url");
            document.getElementById("player").src = url;
            document.getElementById("text-section").innerHTML = "description";
            
        }
        </script>
</body>

</html>






