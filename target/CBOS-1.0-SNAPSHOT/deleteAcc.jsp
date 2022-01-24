<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 17/1/2022
  Time: 11:13 PM
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
<head><%@include file="navbar.html"%></head>
<body style="background-color:#D7EAE8;">
<center>
    <div class="container">
        <h1>Account Profile</h1>

        <img src="https://cdn-icons-png.flaticon.com/512/194/194931.png"  style="width:154px;height:152px;">
        <h3>User</h3>
        <br>

        <form action="deleteAccServlet" method="post">
            <label for="fname">ID :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input type="text" id="fname" name="fname" value="${sessionScope.fid}" disabled><br><br>
            <label for="lname">Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input type="text" id="lname" name="lname" value="${sessionScope.lname}" disabled><br><br>
            <label for="lpass">Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input type="password" id="lpass" name="lpass" value="${sessionScope.lpass}"><br><br>
            <label for="ldress">Address :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input type="text" id="ldress" name="ldress" value="${sessionScope.ldress}"><br><br>
            <label for="lmail">Email :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input type="email" id="lmail" name="lmail" value="${sessionScope.lmail}"><br><br>
            <label for="lnum">Phone Number :</label>
            <input type="text" id="lnum" name="lnum" value="${sessionScope.lnum}"><br><br><br>
            <input type="submit" value="Delete">
        </form>


    </div>
</center>
</body>
</html>

