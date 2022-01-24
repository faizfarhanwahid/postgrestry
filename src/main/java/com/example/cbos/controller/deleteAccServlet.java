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

@WebServlet(name = "deleteAccServlet", value = "/deleteAccServlet")
public class deleteAccServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection conn = Postgres.getConnection();


        HttpSession session = request.getSession();
        session.getAttribute("fid");

        int id = (Integer)session.getAttribute("fid");

        String sql = "DELETE from staff where staff_id=?";

        if(Integer.toString(id).length() >4){
            sql = "DELETE from users where user_id=?";
        }


        int affectedRow = 0; // untuk check row

        try {

            PreparedStatement prepStmt = conn.prepareStatement(sql); // get connection and prepare statement
            prepStmt.setInt(1,id);


            affectedRow = prepStmt.executeUpdate(); // return true if row added (1 means 1 row added)
        } catch (Exception err) {
            err.printStackTrace();
        } finally {
            Postgres.closeConnection();
        }

        if(affectedRow == 0) {
            // tak berjaya insert sebab row yang berubah = 0
        } else if(affectedRow ==  1) {
            session.invalidate();
            response.sendRedirect("index.jsp");
            // berjaya masuk sebab row yang affected = 1, maknanya satu row dalam table ditambah
        }

    }
}
