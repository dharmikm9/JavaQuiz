<%-- 
    Document   : test
    Created on : May 25, 2018, 7:03:38 PM
    Author     : mehta
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="assets/css/quiz.css"/>
        <title>JSP Page</title>
    </head>
    <body>
       
        
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
                            <input type="hidden" name="answer${table.id}" value="${table.answer}"/>
            </c:forEach> 
            <input type="submit" />
        </form>
           
              
         

    </body>
</html>
