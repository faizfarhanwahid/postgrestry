<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 1/1/2022
  Time: 9:38 PM
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
        width: 50%;
        border: 2px grey;
        border-style:solid;
    }
    table, th, td {
        border:1px ;
    }
</style>
<%@include file="navbarStaff.html"%>
<body style="background-color:#D7EAE8">
<center>
    <div class="container">
        <h1>Add Book</h1>
        <form action="addBookServlet" method="post">
        <table>
            <tr>
                <th><label for="fbookId">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Book ID :</label>
                    <input type="text" id="fbookId" name="fbookId" disabled><br><br></th>
                <th><label for="ltitle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Title :</label>
                    <input type="text" id="ltitle" name="ltitle"><br><br></th>
            </tr>
            <tr>
                <th><label for="lauthor">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Author Name :</label>
                    <input type="text" id="lauthor" name="lauthor"><br><br></th>
                <th><label for="lpub">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Publisher :</label>
                    <input type="text" id="lpub" name="lpub"><br><br></th>
            </tr>
            <tr>
                <th><label for="lisbn">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ISBN :</label>
                    <input type="text" id="lisbn" name="lisbn"><br><br></th>
                <th><label for="ldesc">&nbsp;&nbsp;Description :</label>
                    <input type="text" id="ldesc" name="ldesc"><br><br></th>
            </tr>
            <tr>
                <th><label for="lprice">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Price (RM):</label>
                    <input type="number" id="lprice" name="lprice"><br><br></th>
                <th><label for="lstock">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Stock :</label>
                    <input type="number" id="lstock" name="lstock"><label> pcs</label><br><br></th>
            </tr>
        </table>

            <label for="lpubdate">Publish Date :</label>
            <input type="date" id="lpubdate" name="lpubdate"><br><br>
            <label for="myFile">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Book Cover :</label>
            <input type="text" id="myFile" name="myFile"><br><br><br>
            <input type="submit" value="Add">
        </form>
        <br><br>
    </div>
</center>
</body>
</html>
