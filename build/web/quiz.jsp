<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <!-- Custom styles for our template -->
        <link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" type="text/css" href="assets/css/quiz.css"/>
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
            <script src="assets/js/html5shiv.js"></script>
            <script src="assets/js/respond.min.js"></script>
            <![endif]-->
    </head>

    <body>
        <%
            
            response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
            if(session.getAttribute("name") == (null) || session.getAttribute("name") == ""){
               
            out.println("<script type=\"text/javascript\">");
            out.println("alert('To play Quiz, Login is Required');");
            out.println("location='login.jsp';");
            out.println("</script>");
            }

        %>
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
                        <li  class="active"><a href="quiz.jsp">Quiz</a></li>
                        <li><a href="contact.jsp">Contact</a></li>
                  <%
                                if (session != null) {
                                    if (session.getAttribute("name") != null || session.getAttribute("name") == "") {
                                        String name = (String) session.getAttribute("name");
                                        
                                      

                                        out.print("<li class='dropdown' id='submenu'>"
                                                + "<a class='dropdown-toggle' data-toggle='dropdown' >Welcome "+name+" <b class='caret'></b></a>");
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

        <header id="head" class="secondary">
            <div class="container">
                <h1>Quiz</h1>
                <h3> Best Of Luck, ${sessionScope.name}. </h3>
               
            </div>
        </header>
            
            
                
        
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
                           url="jdbc:mysql://localhost/javaquiz_db"  
                           user="root"  password=""/>
        <sql:query dataSource="${db}" var="rs">  
            SELECT * from quiz;  
        </sql:query>  






        <form action="ValidationServlet" method="post">

            <c:forEach var="table" items="${rs.rows}">    

                <div class="privew">

                    <div class="questionsBox">
                        <div class="questions">${table.id}<%= ") "%>${table.question}</div>
                        <ul class="answerList">
                            <li>
                                <label>
                                    <input type="radio" name="${table.id}" value="1" id="answerGroup_0"> ${table.op1}.</label>
                            </li>
                            <li>
                                <label>
                                    <input type="radio" name="${table.id}" value="2" id="answerGroup_1"> ${table.op2}.</label>
                            </li>
                            <li>
                                <label>
                                    <input type="radio" name="${table.id}" value="3" id="answerGroup_2"> ${table.op3}</label>
                            </li>
                            <li>
                                <label>
                                    <input type="radio" name="${table.id}" value="4" id="answerGroup_3"> ${table.op4}</label>
                            </li>
                        </ul>

                    </div>
                </div>
                            
            </c:forEach> 
            <input class="btn btn-success btn-lg center-block" type="submit" style="margin-bottom: 20px;" />
        </form>

            
            
            
            	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/custom.js"></script>

	<!-- Google Maps -->
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
	<script src="assets/js/google-map.js"></script>
    </body>
</html>
           