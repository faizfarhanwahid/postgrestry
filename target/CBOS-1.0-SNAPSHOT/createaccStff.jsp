<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 1/1/2022
  Time: 9:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<style>
    .container {
        position: relative;
        border-radius: 5px;
        background-color: white;
        padding: 20px 0 30px 0;
        width: 30%;
        border: 2px grey;
        border-style:solid;
    }
</style>

<body style="background-color:#D7EAE8;padding-top: 50px;">
<center>
    <div class="container">
        <h1>Create Account</h1>

        <img src="https://cdn-icons.flaticon.com/png/512/3281/premium/3281869.png?token=exp=1642432528~hmac=983ad37ba2df8cfa51a9eb9446ebba39"  style="width:154px;height:152px;">
        <h3>Staff</h3>
        <br>
        <form action="/StaffRegisServlet" method="post">
            <label for="fname">ID :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input type="integer" id="fname" name="fid"><br><br>
            <label for="lname">Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input type="text" id="lname" name="lname"><br><br>
            <label for="lpass">Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input type="password" id="lpass" name="lpass"><br><br>
            <label for="ldress">Address :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input type="text" id="ldress" name="ldress"><br><br>
            <label for="lmail">Email :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input type="email" id="lmail" name="lmail"><br><br>
            <label for="lnum">Phone Number :</label>
            <input type="integer" id="lnum" name="lnum"><br><br><br>
            <input type="submit" value="Create" >
        </form>
    </div>
</center>
<%

    Integer staff_id = Integer.parseInt(request.getParameter("fid"));
    String staff_name = request.getParameter("lname");
    String staff_email = request.getParameter("lmail");
    String staff_address = request.getParameter("ldress");
    Integer staff_phonenumber = Integer.parseInt(request.getParameter("lnum"));
    String staff_password = request.getParameter("lpass");

    try{
        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection("postgres://postgres:system@localhost:5432/ddn4nslo8pnje3", "postgres","system");
        //PreparedStatement pst = con.prepareStatement("INSERT INTO staffs (staff_id, staff_name, staff_email, staff_address, staff_phonenumber, staff_password) VALUES (?,?,?,?,?,?)");
        Statement stmt=con.createStatement();
        String sql = "INSERT INTO staffs (staff_id, staff_name, staff_email, staff_address, staff_phonenumber, staff_password) VALUES (?,?,?,?,?,?)";

			/*pst.setString(1, custPwd);
			pst.setString(2, custPhoneNum);
			pst.setString(3, custEmail);
			pst.setString(4, custUsername);
			pst.executeUpdate();*/

        int x = stmt.executeUpdate(sql);
        if(x>0){
            response.sendRedirect("index.jsp");
        }else{
            request.setAttribute("error", "Error encountered. Try Again");
            RequestDispatcher rd = request.getRequestDispatcher("createaccStff.jsp");
            rd.include(request, response);
        }
        con.close();
    }catch(Exception e){
        out.println(e);
    }
%>
</body>
</html>

