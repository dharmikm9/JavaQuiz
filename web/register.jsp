
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="free-educational-responsive-web-template-webEdu">
        <meta name="author" content="webThemez.com">
        <title>JavaQuiz</title>
        <link rel="favicon" href="assets/images/favicon.png">
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
    <body>

        <!-- Fixed navbar -->
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
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="about.jsp">About</a></li>
                        <li><a href="quiz.jsp">Quiz</a></li>
                        <li><a href="contact.jsp">Contact</a></li>
                        <li><a href="login.jsp">Login</a></li>
                        <li class="active"><a href="register.jsp">Register</a></li>

                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </div>
        <!-- /.navbar -->


        <header id="head" class="secondary">
            <div class="container">
                <h1>Register</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing eliras scele!</p>
            </div>
        </header>

        <section> 

            <div class="container">
                <div class="wrapper">
                    <form class="form-signin" action="RegistrationServlet" method="post">       
                        <h2 class="form-signin-heading">Registration Form </h2>
                        <input type="text" class="form-control" name="name" placeholder="Enter Name"  autofocus="" />
                        <input type="text" class="form-control" name="email" placeholder="Email Address"  autofocus="" />
                        <input type="date" class="form-control" name="dob" placeholder="Birth Date"  autofocus="" />
                        <input type="password" class="form-control" name="pwd" placeholder="Password" />      


                        <input type="password" class="form-control" name="cpwd" placeholder="Confirm Password" />      
                        <h4 style="color:red;"><%
                            if (null != request.getAttribute("errorMessage")) {
                                out.println(request.getAttribute("errorMessage"));
                            }
                        %></h4>
                        <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>  
                        <label>Already have Account ? <a href="login.jsp">Login Here.</a></label>
                    </form>
                </div>
            </div>
        </section>



        <footer id="footer">

            <div class="container">
                <div class="row">
                    <div class="footerbottom">
                        <div class="col-md-3 col-sm-6">
                            <div class="footerwidget">
                                <h4>
                                    Course Categories
                                </h4>
                                <div class="menu-course">
                                    <ul class="menu">
                                        <li><a href="#">
                                                List of Technology 
                                            </a>
                                        </li>
                                        <li><a href="#">
                                                List of Business
                                            </a>
                                        </li>
                                        <li><a href="#">
                                                List of Photography
                                            </a>
                                        </li>
                                        <li><a href="#">
                                                List of Language
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="footerwidget">
                                <h4>
                                    Products Categories
                                </h4>
                                <div class="menu-course">
                                    <ul class="menu">
                                        <li> <a href="#">
                                                Individual Plans  </a>
                                        </li>
                                        <li><a href="#">
                                                Business Plans
                                            </a>
                                        </li>
                                        <li><a href="#">
                                                Free Trial
                                            </a>
                                        </li>
                                        <li><a href="#">
                                                Academic
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="footerwidget">
                                <h4>
                                    Browse by Categories
                                </h4>
                                <div class="menu-course">
                                    <ul class="menu">
                                        <li><a href="#">
                                                All Courses
                                            </a>
                                        </li>
                                        <li> <a href="#">
                                                All Instructors
                                            </a>
                                        </li>
                                        <li><a href="#">
                                                All Members
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                All Groups
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6"> 
                            <div class="footerwidget"> 
                                <h4>Contact</h4> 
                                <p>I'm glad to answer your questions.</p>
                                <div class="contact-info"> 
                                    <i class="fa fa-map-marker"></i> Junagadh - India.<br>
                                    <i class="fa fa-phone"></i>+91 8866 4592 79 <br>
                                    <i class="fa fa-envelope-o"></i> dj1998@gmail.com
                                </div> 
                            </div><!-- end widget --> 
                        </div>
                    </div>
                </div>
                <div class="social text-center">
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-dribbble"></i></a>
                    <a href="#"><i class="fa fa-flickr"></i></a>
                    <a href="#"><i class="fa fa-github"></i></a>
                </div>

                <div class="clear"></div>
                <!--CLEAR FLOATS-->
            </div>
            <div class="footer2">
                <div class="container">
                    <div class="row">

                        <div class="col-md-6 panel">
                            <div class="panel-body">
                                <p class="simplenav">
                                    <a href="index.jsp">Home</a> | 
                                    <a href="about.jsp">About</a> |
                                    <a href="quiz.jsp">Quiz</a> |                                   
                                    <a href="contact.jsp">Contact</a>
                                </p>
                            </div>
                        </div>

                        <div class="col-md-6 panel">
                            <div class="panel-body">
                                <p class="text-right">
                                    Copyright &copy; 2018. Template by<a href="http://www.PLace4Java.com/" rel="develop">Place4Java.com</a>
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
