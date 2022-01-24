package com.example.cbos.controller;

import com.example.cbos.connection.Postgres;

import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;


@WebServlet(name = "registerServlet", value = "/registerServlet")
public class registerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

        //retrieve
        String id = request.getParameter("fid");
        String name = request.getParameter("lname");
        String password = request.getParameter("lpass");
        String address = request.getParameter("ldress");
        String email = request.getParameter("lmail");
        String phonenumber = request.getParameter("lnum");

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        //print
        out.println("<!DOCTYPE html><html><body>");
        out.println("Id: "+ id + "<br>");
        out.println("Name: "+ name+ "<br>");
        out.println("Password: "+ password + "<br>");
        out.println("Address: "+ address + "<br>");
        out.println("Email: "+ email + "<br>");
        out.println("Phone number: "+ phonenumber + "<br>");
        out.println("</body></html>");




            Connection conn = Postgres.getConnection();

        String sql = "INSERT INTO staff (staff_id,staff_name,staff_password,staff_address,staff_email,staff_phonenumber) VALUES (?,?,?,?,?,?)";

            if(id.length()>4){
             sql = "INSERT INTO users (user_id,user_name,user_password,user_address,user_email,user_phonenumber) VALUES (?,?,?,?,?,?)";

            }

            response.sendRedirect("index.jsp");
            int affectedRow = 0; // untuk check row

            try {
                int temp = Integer.parseInt(id);

                PreparedStatement prepStmt = conn.prepareStatement(sql); // get connection and prepare statement

                // set string parameter
                prepStmt.setInt(1, temp);
                prepStmt.setString(2, name);
                prepStmt.setString(3, password);
                prepStmt.setString(4, address);
                prepStmt.setString(5, email);
                prepStmt.setString(6, phonenumber);

                affectedRow = prepStmt.executeUpdate(); // return true if row added (1 means 1 row added)
            } catch (Exception err) {
                err.printStackTrace();
            } finally {
                Postgres.closeConnection();
            }

            if(affectedRow == 0) {
                // tak berjaya insert sebab row yang berubah = 0
            } else if(affectedRow ==  1) {
                // berjaya masuk sebab row yang affected = 1, maknanya satu row dalam table ditambah
            }




    }
}
