package servletpkg;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mehta
 */
public class ValidationServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        try {

            int mark = 0;
            boolean islogin = false;
            String name = "";
            String email = request.getParameter("email");
            String pwd = request.getParameter("pwd");

            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/javaquiz_db";
            String uname = "root";
            String pass = "";
            Connection con = DriverManager.getConnection(url, uname, pass);

            PreparedStatement ps = con.prepareStatement("select * from quiz ");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String selected = request.getParameter(rs.getString("id"));
                String answer = rs.getString("answer");
                if (selected.equals(answer)) {
                    mark++;

                }

            }
            rs.last();
            int total = rs.getRow();
            HttpSession session = request.getSession();
            session.setAttribute("mark", mark);
            session.setAttribute("total", total);
            out.println("<script type=\"text/javascript\">");
            out.println("location='status.jsp';");
            out.println("</script>");

        } catch (Exception ex) {
            response.sendRedirect("quiz.jsp");
        }

    }

}
