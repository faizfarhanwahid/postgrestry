<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 22/1/2022
  Time: 12:24 PM
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
<body style="background-color:#D7EAE8;">
<center>
    <div class="container">
        <h1>Payment</h1>
        <br>
        <div class="frame" style="margin: 0px 20px; border-radius: 0px 0px 10px 10px;">
            <table id="voteList" class="display" cellspacing="0" width="100%" >
                <thead>
                <tr>
                    <th ><img src="https://play-lh.googleusercontent.com/dEcCRYBuzpFUd2R_ZjTfPxKbRrZoiNoMiO2QULQu17k1jI9itzDQ4QM7kjMI_eFyRaI"  style="width:94px;height:92px;"></th>
                    <td >Maybank <br>158023902021<br>LucyTech Empire</td>
                    <th ><img src="https://play-lh.googleusercontent.com/P5QxSIOc7_Jp38I-oz7OPzDSSpFiYTY2317tCOan6RvsekOZQr3704P3GBPly1xh0Ag"   style="width:94px;height:92px;"></th>
                    <td >Bank Islam <br>083249290123<br>ClickUS</td>
                </tr>
                </thead>
            </table>
            <br><br><br>
            <hr class="solid">
            <a>Total:RM </a><br>
            <hr class="solid">
            <br>
            <p style="background-color:red; color:white;">Please screenshot or capture the payment receipt as an evidence to be upload</p>
            <form>
                <label for="myFile">Upload Payment Evidence :</label>
                <input type="file" id="myFile" name="filename">
                <input type="submit" value="Submit"  style="background-color:green; color:white;">
            </form>
        </div>
        <br><br>
    </div>
</center>
</body>
</html>

