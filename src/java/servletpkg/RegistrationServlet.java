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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mehta
 */
public class RegistrationServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        try {

            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String dob = request.getParameter("dob");
            String pwd = request.getParameter("pwd");
            String cpwd = request.getParameter("cpwd");
            
            
            if(name.isEmpty()||email.isEmpty()||dob.isEmpty()||pwd.isEmpty()||cpwd.isEmpty())
            {
                request.setAttribute("errorMessage", "*value should not be blank.");
                RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
                rd.forward(request, response);
            }
            else
            {


                Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/javaquiz_db";
                String uname = "root";
                String pass = "";
                Connection con = DriverManager.getConnection(url, uname, pass);

                PreparedStatement ps = con.prepareStatement("insert into record_tb values(?,?,?,?)");

                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, dob);
                ps.setString(4, pwd);
                int i = ps.executeUpdate();

                out.println("<script type=\"text/javascript\">");
                out.println("alert('You Successfully Registered !');");
                out.println("location='index.jsp';");
                out.println("</script>");
            }
            
        } catch (Exception ex) {
            out.print(ex);
        }

    }

}
