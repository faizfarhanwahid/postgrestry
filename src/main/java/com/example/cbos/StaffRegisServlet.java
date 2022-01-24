package com.example.cbos;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "StaffRegisServlet", value = "/StaffRegisServlet")
public class StaffRegisServlet extends HttpServlet {

    public StaffRegisServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

        //retrieve
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String Cpassword = request.getParameter("Cpassword");

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        //print
        out.println("<!DOCTYPE html><html><body>");
        out.println("Username: "+ username + "<br>");
        out.println("Email: "+ email + "<br>");
        out.println("Password: "+ password + "<br>");
        out.println("Confirm Password: "+ Cpassword + "<br>");
        out.println("</body></html>");

        try {

            Class.forName("org.postgresql.Driver");
            String dbURL = "jdbc:postgresql://localhost:5432/postgres";
            String user = "postgres";
            String pass = "system";

            Connection conn = DriverManager.getConnection(dbURL, user, pass);
            Statement st = conn.createStatement();

            String sql = "INSERT INTO staffs (staff_id, staff_name, staff_email, staff_address, staff_phonenumber, staff_password) VALUES (?,?,?,?,?,?)";

            st.executeUpdate(sql);
            out.println("Data is Successfully Inserted into Staff Table");
        }
        catch (ClassNotFoundException | SQLException e) {

            e.printStackTrace();

        }
    }
}
