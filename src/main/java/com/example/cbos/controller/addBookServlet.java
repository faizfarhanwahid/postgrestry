package com.example.cbos.controller;

import com.example.cbos.connection.Postgres;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "addBookServlet", value = "/addBookServlet")
public class addBookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        HttpSession session = request.getSession();
        int id =(Integer) session.getAttribute("fid");

        //retrieve

        String tittle = request.getParameter("ltitle");
        String author = request.getParameter("lauthor");
        String pub = request.getParameter("lpub");
        String isbn = request.getParameter("lisbn");
        String desc= request.getParameter("ldesc");
        String price = request.getParameter("lprice");
        String stock = request.getParameter("lstock");
        String pubdate = request.getParameter("lpubdate");
        String myfile = request.getParameter("myFile");

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        //print
        out.println("<!DOCTYPE html><html><body>");
        out.println("Tittle: "+ tittle+ "<br>");
        out.println("Author: "+ author + "<br>");
        out.println("Pub: "+ pub + "<br>");
        out.println("ISBN: "+ isbn + "<br>");
        out.println("Desc: "+ desc + "<br>");
        out.println("Price: "+ price + "<br>");
        out.println("Stock: "+ stock + "<br>");
        out.println("Date: "+ pubdate + "<br>");
        out.println("Image Book: "+ myfile + "<br>");
        out.println("</body></html>");




        Connection conn = Postgres.getConnection();

        String sql = "INSERT INTO book (book_tittle,book_price,book_stock,book_author,book_isbn,book_publishdate,book_description,book_publisher,book_image,staff_id) VALUES (?,?,?,?,?,?,?,?,?,?)";



        int affectedRow = 0; // untuk check row

        try {


            PreparedStatement prepStmt = conn.prepareStatement(sql); // get connection and prepare statement

            // set string parameter
            prepStmt.setString(1, tittle);
            prepStmt.setInt(2, Integer.parseInt(price));
            prepStmt.setInt(3, Integer.parseInt(stock));
            prepStmt.setString(4, author);
            prepStmt.setString(5, isbn);
            prepStmt.setDate(6,Date.valueOf(pubdate));
            prepStmt.setString(7, desc);
            prepStmt.setString(8, pub);
            prepStmt.setString(9, myfile);
            prepStmt.setInt(10, id);



            affectedRow = prepStmt.executeUpdate(); // return true if row added (1 means 1 row added)
        } catch (Exception err) {
            err.printStackTrace();
        } finally {
            Postgres.closeConnection();
        }

        if(affectedRow == 0) {
            // tak berjaya insert sebab row yang berubah = 0
        } else if(affectedRow ==  1) {
            response.sendRedirect("booklistedit.jsp");
            // berjaya masuk sebab row yang affected = 1, maknanya satu row dalam table ditambah
        }

    }
}
