<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
                            <%
                                if (session != null) {
                                    if (session.getAttribute("name") != null || session.getAttribute("name") == "") {
                                        String name = (String) session.getAttribute("name");
                                        
                                      

                                        out.print("<li class='dropdown' id='submenu'>"
                                                + "<a class='dropdown-toggle' data-toggle='dropdown' >Welcome "+name+"<b class='caret'></b></a>");
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