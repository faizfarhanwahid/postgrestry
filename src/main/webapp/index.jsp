<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
        <h1>LOGIN ACCOUNT</h1>

        <img src="https://scontent.xx.fbcdn.net/v/t39.30808-6/271818214_359858489195274_8560785430061830537_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=730e14&_nc_ohc=GLJ9l96ovSQAX9NqYi_&_nc_ht=scontent.xx&oh=00_AT-tCoSA6EOdroUlDZpi58IlE3ckzpAtM_XNhA8ym6LFEA&oe=61F4ED55"  style="width:154px;height:152px;">
        <br>
        <br>
            <br>
            <br>
        <form action="loginServlet" method="post">
            <label for="fid">Id &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</label>
            <input type="text" id="fid" name="fid"><br><br>
            <label for="lpass">Password &nbsp;</label>
            <input type="password" id="lpass" name="lpass"><br><br><br>
            <input type="submit" value="Login">
            <br>
        </form>
            <br>
            <div class="text-center p-t-12">
                <a href="createAcc.jsp">Create Account
                    <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                </a>
            </div>
    </div>
    <a href="deleteAcc.jsp">delete acc</a>
    <a href="updateAcc.jsp">update acc</a>
    <a href="addbook.jsp">add book</a>
    <a href="delupdbook.jsp">del up book</a>
    <a href="viewbooktocart.jsp">view book add to cart</a>
    <a href="booklist.jsp">booklist</a>
    <a href="paymentstatus.jsp">update payment status</a>
    <a href="uploadpayment.jsp">upload payment</a>
    <a href="updatetrackingnum.jsp">update track</a>
    <a href="booklistedit.jsp">edit book</a>
</center>
</body>
</html>
