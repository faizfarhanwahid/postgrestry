package com.example.cbos.controller;

import com.example.cbos.connection.Postgres;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "loginServlet", value = "/loginServlet")
public class loginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request, response);

        String id = request.getParameter("fid");
        String password = request.getParameter("lpass");

        PrintWriter out = response.getWriter();
        out.print("<!DOCTYPE html><html><body>");
        out.print("Id:" + id + "<br>");
        out.print("Password:" + password + "<br>");

        out.print("</body></html>");

        try {

            Connection conn = Postgres.getConnection();
            Statement st = conn.createStatement();

            if (id.length() > 4) {
                ResultSet sql = st.executeQuery("SELECT * FROM users WHERE user_id = '" + id + "' AND user_password = '" + password + "'");
                if (sql.next()) {
                    HttpSession session = request.getSession();
                    session.setAttribute("fid", sql.getInt("user_id") );
                    session.setAttribute("lname", sql.getString("user_name") );
                    session.setAttribute("lpass", sql.getString("user_password") );
                    session.setAttribute("ldress", sql.getString("user_address") );
                    session.setAttribute("lmail", sql.getString("user_email") );
                    session.setAttribute("lnum", sql.getString("user_phonenumber") );
                    session.setMaxInactiveInterval(60*20); // 20 min timeout after inactivity
                    response.sendRedirect("booklist.jsp");
                } else {
                    out.println("Wrong username/password");
                    //response.sendRedirect("loginBuyer.jsp"); //patut ke buat new page? utk login kalau dia ada error, sbb ni nnti dia direct je hahaha
                }
            } else {
                ResultSet sql = st.executeQuery("SELECT * FROM staff WHERE staff_id = '" + id + "' AND staff_password = '" + password + "'");
                if (sql.next()) {
                    HttpSession session = request.getSession();
                    session.setAttribute("fid", sql.getInt("staff_id") );
                    session.setAttribute("lname", sql.getString("staff_name") );
                    session.setAttribute("lpass", sql.getString("staff_password") );
                    session.setAttribute("ldress", sql.getString("staff_address") );
                    session.setAttribute("lmail", sql.getString("staff_email") );
                    session.setAttribute("lnum", sql.getString("staff_phonenumber") );
                    session.setMaxInactiveInterval(60*20); // 20 min timeout after inactivity
                    response.sendRedirect("addbook.jsp");
                } else {
                    out.println("Wrong username/password");
                    //response.sendRedirect("loginBuyer.jsp"); //patut ke buat new page? utk login kalau dia ada error, sbb ni nnti dia direct je hahaha
                }


            }


        }

        catch(Exception e){
            e.printStackTrace();
        }
    }

}