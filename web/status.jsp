<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--
Author: WebThemez
Author URL: http://webthemez.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="free-educational-responsive-web-template-webEdu">
        <meta name="author" content="webThemez.com">
        <title>JavaQuiz</title>

        <link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css"> 
        <link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen"> 
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel='stylesheet' id='camera-css'  href='assets/css/camera.css' type='text/css' media='all'> 
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="assets/js/html5shiv.js"></script>
        <script src="assets/js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body><!-- Fixed navbar -->
        <%

            response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
            if (session.getAttribute("name") == (null) || session.getAttribute("name") == "") {

                out.println("<script type=\"text/javascript\">");
                out.println("alert('To play Quiz, Login is Required');");
                out.println("location='login.jsp';");
                out.println("</script>");
            }

        %>
        <div class="navbar navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <!-- Button for smallest screens -->
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                    <a class="navbar-brand" href="index.jsp">
                        <h1>JavaQuiz</h1></a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav pull-right mainNav">
                        <li class="active"><a href="index.jsp">Home</a></li>
                        <li><a href="about.jsp">About</a></li>
                        <li><a href="quiz.jsp">Quiz</a></li>
                        <li><a href="contact.jsp">Contact</a></li>
                            <%                                if (session != null) {
                                    if (session.getAttribute("name") != null || session.getAttribute("name") == "") {
                                        String name = (String) session.getAttribute("name");

                                        out.print("<li class='dropdown' id='submenu'>"
                                                + "<a class='dropdown-toggle' data-toggle='dropdown' >Welcome " + name + "<b class='caret'></b></a>");
                                        out.print("<ul class='dropdown-menu' id='sub'>");
                                        out.print(" <li><a href='LogoutServlet'> Logout </a></li>");
                                        out.print("</ul>");
                                        out.print("</li>");

                                    } else {
                                        out.print(" <li><a href='login.jsp'> Login </a></li>");
                                        out.print(" <li><a href='register.jsp'> Register</a> </li>");

                                    }
                                }
                            %>

                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </div>
        <!-- /.navbar -->

        <div class="container">
            <div class="row"> 

                <div class="jumbotron">
                    <div class="container">
                       
                        <h1 class="display-3">You got ${sessionScope.mark} out of ${sessionScope.total}  </h1>
                        
                        <hr class="col-md-4">
                        <h3>Thanks for playing quiz with JavaQuiz.</h3>
                        <h3 class="lead">
                            <a class="btn btn-success btn-lg" href="quiz.jsp" role="button">Play Again</a>
                            <a class="btn btn-success btn-lg" href="index.jsp" role="button">Home</a>
                        </h3>
                    </div>
                </div>

            </div>                
        </div>


        <footer id="footer" class=" navbar-fixed-bottom">

           
            <div class="footer2">
                <div class="container">
                    <div class="row">

                        <div class="col-md-6 panel">
                            <div class="panel-body">
                                <p class="simplenav">
                                    <a href="index.html">Home</a> | 
                                    <a href="about.html">About</a> |
                                    <a href="courses.html">Courses</a> |
                                    <a href="price.html">Price</a> |
                                    <a href="videos.html">Videos</a> |
                                    <a href="contact.html">Contact</a>
                                </p>
                            </div>
                        </div>

                        <div class="col-md-6 panel">
                            <div class="panel-body">
                                <p class="text-right">
                                    Copyright &copy; 2014. Template by <a href="http://webthemez.com/" rel="develop">WebThemez.com</a>
                                </p>
                            </div>
                        </div>

                    </div>
                    <!-- /row of panels -->
                </div>
            </div>
        </footer>

        <!-- JavaScript libs are placed at the end of the document so the pages load faster -->
        <script src="assets/js/modernizr-latest.js"></script> 
        <script type='text/javascript' src='assets/js/jquery.min.js'></script>
        <script type='text/javascript' src='assets/js/fancybox/jquery.fancybox.pack.js'></script>

        <script type='text/javascript' src='assets/js/jquery.mobile.customized.min.js'></script>
        <script type='text/javascript' src='assets/js/jquery.easing.1.3.js'></script> 
        <script type='text/javascript' src='assets/js/camera.min.js'></script> 
        <script src="assets/js/bootstrap.min.js"></script> 
        <script src="assets/js/custom.js"></script>
        <script>
            jQuery(function () {

                jQuery('#camera_wrap_4').camera({
                    transPeriod: 500,
                    time: 3000,
                    height: '600',
                    loader: 'false',
                    pagination: true,
                    thumbnails: false,
                    hover: false,
                    playPause: false,
                    navigation: false,
                    opacityOnGrid: false,
                    imagePath: 'assets/images/'
                });

            });

        </script>

    </body>
</html>