<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 22/1/2022
  Time: 12:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.css">

<style>
    .container {
        position: relative;
        border-radius: 5px;
        background-color: white;
        padding: 20px 0 30px 0;
        width: 60%;
        border: 2px grey;
        border-style:solid;
    }

    .frame {
        width: auto;
        margin: 40px auto 10px;
        padding: 20px;
        border: 1px solid black;
        background: white;
        border-radius: 10px 10px 10px 10px;
    }

    hr.solid {
        border-top: 3px solid #bbb;
    }

</style>
<head><%@include file="navbar.html"%></head>

<body style="background-color:#D7EAE8">
<center>
    <div class="container">
        <h1>Cart</h1>
        <br>
        <div class="frame" style="margin: 0px 20px; border-radius: 0px 0px 10px 10px;">
            <table id="voteList" class="display" cellspacing="0" width="100%" >
                <thead>
                <tr>
                    <th >Book Image</th>
                    <th >Book Title</th>
                    <th >Price (RM)</th>
                    <th >Quantity</th>
                    <th ></th>
                </tr>
                </thead>
                <tbody>

                <tr rowspan ="4" >
                    <td style="text-align: center;"><br><br>sadasd</td>
                    <td style="text-align: center;"><br><br>asdad</td>
                    <td style="text-align: center;"><br><br>adsa</td>
                    <td style="text-align: center;"><br><br>
                        <input type="number" id="lstock" name="lstock" style="width: 50px;"></td>
                    <td style="text-align: center;"><br><br><input type="submit" value="remove" style="background-color:red; color:white;"></td>
                </tr >
                </tbody>
            </table>
            <br><br><br>
            <hr class="solid">

            <a style="margin-left: 45%; ">Sub Total: </a><br>
            <a style="margin-left: 45%; ">Tax (5%): </a><br>
            <a style="margin-left: 45%; ">Shipping: </a><br>
            <a style="margin-left: 45%; ">Grand Total:</a>
            <hr class="solid">
            <br>
            <a href="#" style="margin-left: 83%; "><input type="submit" value="checkout" style="background-color:green; color:white;"></a>
        </div>
        <br><br>
    </div>
</center>
</body>
</html>

