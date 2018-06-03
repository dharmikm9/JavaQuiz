/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servletpkg;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mehta
 */
public class ContactServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        try {

            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String subject = request.getParameter("subject");
            String message = request.getParameter("message");
            
            
            if(true)
            {
            out.println("<script type=\'text/javascript\'>");
            out.println("alert('Thanks for Contact Us.');");
            out.println("location='index.jsp';");
            out.println("</script>");
            }

//            out.println(name);
//            out.println(email);
//            out.println(phone);
//            out.println(subject);
//            out.println(message);


        } catch (Exception ex) {
            out.print(ex);
        }

    }

}
