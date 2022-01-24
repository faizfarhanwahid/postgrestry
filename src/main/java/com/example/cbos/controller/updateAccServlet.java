package com.example.cbos.controller;

import com.example.cbos.connection.Postgres;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "updateAccServlet", value = "/updateAccServlet")
public class updateAccServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //retrieve

        String name = request.getParameter("lname");
        String password = request.getParameter("lpass");
        String address = request.getParameter("ldress");
        String email = request.getParameter("lmail");
        String phonenumber = request.getParameter("lnum");

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        //print
        out.println("<!DOCTYPE html><html><body>");

        out.println("Name: "+ name+ "<br>");
        out.println("Password: "+ password + "<br>");
        out.println("Address: "+ address + "<br>");
        out.println("Email: "+ email + "<br>");
        out.println("Phone number: "+ phonenumber + "<br>");
        out.println("</body></html>");


        Connection conn = Postgres.getConnection();

        HttpSession session = request.getSession();
        session.getAttribute("uid");

        int id = (Integer)session.getAttribute("uid");


        String sql = "UPDATE staff set staff_password=?,staff_address=?,staff_email=?,staff_phonenumber=? WHERE id=?";

        if(Integer.toString(id).length() >4){
            sql = "UPDATE users set users_password=?,users_address=?,users_email=?,users_phonenumber=? WHERE id=?";
        }


        int affectedRow = 0; // untuk check row

        try {

            PreparedStatement prepStmt = conn.prepareStatement(sql); // get connection and prepare statement
            prepStmt.setInt(5,id);

            // set string parameter
            prepStmt.setString(1, password);
            prepStmt.setString(2, address);
            prepStmt.setString(3, email);
            prepStmt.setString(4, phonenumber);

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
