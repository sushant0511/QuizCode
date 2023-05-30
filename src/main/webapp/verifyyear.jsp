<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>



 <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>SET-CSE-Quiz Portal!</title>
  </head>
  <body>
    <center><h1>Verify Faculty Credential to allot Passsword!</h1></center><br><br><br>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <form method="post" action ="displayresult.jsp">
<!--Verify Login
ENter your email <input type="text" name="femailid"><br>
ENter your password <input type="text" name="password"><br>  -->

<div class="container">
	<div class="row">
		<div class="col-3">
		</div>
<div class="col-6">
	
	<h4>Enter Class Deatils </h4>
	
  <div class="form-group">
    <label for="exampleInputEmail1">Enter your class name </label>
    <input type="text" class="form-control" aria-describedby="emailHelp" name="course">
    <small id="emailHelp" class="form-text text-muted">This Must be match with Database</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter Class Year</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="year">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>

  

</div>
<div class="col-3">
</div>
</div>
</div>
</form>


</body>
</html>



