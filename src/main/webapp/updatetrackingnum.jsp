<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 22/1/2022
  Time: 12:38 PM
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


</style>
<%@include file="navbarStaff.html"%>
<body style="background-color:#D7EAE8;">
<center>
  <div class="container">
    <h1>Tracking Number</h1>
    <br>
    <div class="frame" style="margin: 0px 20px; border-radius: 0px 0px 10px 10px;">
      <table id="voteList" class="display" cellspacing="0" width="100%" border="1">
        <thead>
        <tr>
          <th>Order Id</th>
          <th>Tracking Number</th>
        </tr>
        </thead>
        <tbody>

        <tr rowspan ="4">
          <td style="text-align: center;"></td>
          <td style="text-align: center;">
            <form action="/action_page.php">
              <input type="text" id="tracking" name="tracking">
              <input type="submit" value="Update">
            </form></i><a></a></td>
        </tr>

        </tbody>
      </table>
    </div>
    <br><br>
  </div>
</center>
</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.js"></script>
<script type="text/javascript">
  $(document).ready( function () {
    $('#voteList').DataTable();
  } );
</script>

</html>

