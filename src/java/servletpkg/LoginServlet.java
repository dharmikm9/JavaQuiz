/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servletpkg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mehta
 */
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        try {

            boolean islogin = false;
            String name = "";
            String email = request.getParameter("email");
            String pwd = request.getParameter("pwd");

            if (email.isEmpty() || pwd.isEmpty()) {
                request.setAttribute("errorMessage", "*Invalid user or password.");
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
            } else {

                Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/javaquiz_db";
                String uname = "root";
                String pass = "";
                Connection con = DriverManager.getConnection(url, uname, pass);

                PreparedStatement ps = con.prepareStatement("select name from record_tb where email=? and password=?");

                ps.setString(1, email);
                ps.setString(2, pwd);
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    name = rs.getString("name");
                    islogin = true;
                } else {
                    request.setAttribute("errorMessage", "*Invalid user or password.");
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    rd.forward(request, response);
                }

                if (islogin) {

                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('You Successfully Login !');");
                    out.println("location='index.jsp';");
                    out.println("</script>");
                    HttpSession session = request.getSession();
                    session.setAttribute("name", name);
                    // session.setAttribute("password", pwd);
                    response.sendRedirect("index.jsp");
                }

            }
        } catch (Exception ex) {
            out.print(ex);
        }

    }

}
