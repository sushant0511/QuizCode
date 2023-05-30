<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<%@page import ="java.sql.*" %>
<body>

 <title>SET-CSE-Quiz Portal!</title>
  </head>
  <body>
    <center><h1>Welcome to SET Quiz Portal!</h1></center><br><br><br>










<ul class="nav justify-content-end">
  <li class="nav-item">
    <a class="nav-link active" href="index.html">Logout</a>
  </li>
  </ul>
<% // After some time create a seesion of user and then set logout.jsp to remove sesion %>






    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  <center>
<div class="container">
	<h3>
<center><%
String name=session.getAttribute("fname").toString();

out.println("Welcome "+name);
%>
<br>
</center></h3>	

	<div class="row">
<div class="col">
	<div class="card" style="width: 15rem;">
  <img src="ql.jpg" class="card-img-top" alt="QB">
  <div class="card-body">
    <h5 class="card-title">Question List</h5>
    <p class="card-text">This Will Display Question List.</p>
    <a href="qlist.html" class="btn btn-primary">Check Question List</a>
  </div>
</div>
</div>


<div class="col">
	<div class="card" style="width: 15rem;">
  <img src="ql.jpg" class="card-img-top" alt="QB">
  <div class="card-body">
    <h5 class="card-title">Insert More Question</h5>
    <p class="card-text">This Will Insert your Question in List.</p>
    <a href="finsert.html" class="btn btn-primary">Insert Question</a>
  </div>
</div>
</div>
</div>
	<div class="row">
<div class="col">
	<div class="card" style="width: 15rem;">
  <img src="ql.jpg" class="card-img-top" alt="QB">
  <div class="card-body">
    <h5 class="card-title">Delete Question</h5>
    <p class="card-text">This Will Delete your Question from list with ID only</p>
    <a href="fdelete.html" class="btn btn-primary">Delete Question</a>
  </div>
</div>
</div>

<div class="col">
	<div class="card" style="width: 15rem;">
  <img src="ql.jpg" class="card-img-top" alt="QB">
  <div class="card-body">
    <h5 class="card-title">Assign Password to Student</h5>
    <p class="card-text">This password is used to Login</p>
    <a href="assignpwd.html" class="btn btn-primary">Assign Password</a>
  </div>
</div>
</div>
</div>
<center>
<div class ="row">
<div class="col">
	<div class="card" style="width: 15rem;">
  <img src="ql.jpg" class="card-img-top" alt="QB">
  <div class="card-body">
    <h5 class="card-title">Display Quiz Result</h5>
    <p class="card-text">Kindly download this in PDF for your backup (Use chrome to download)</p>
    <a href="quizres.html" class="btn btn-primary">Display Result</a>
  </div>
</div>
</div>

<div class="col">
	<div class="card" style="width: 15rem;">
  <img src="ql.jpg" class="card-img-top" alt="QB">
  <div class="card-body">
    <h5 class="card-title">Remove Result of a Class</h5>
    <p class="card-text">Clear Previous Result to display only your result</p>
    <a href="clearresult.html" class="btn btn-primary">Clear Previous Result</a>
  </div>
</div>
</div>



</div>
</center>
</div>	

 </center>

</body>
</html>