<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Complete Quiz View</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<%@page import ="java.sql.*" %>
<body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<%
System.out.println("Start");

//String emailofFac=session.getAttribute("femailforques").toString();
//System.out.println("vlue="+emailofFac);
Connection conn = null;
try
{
String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://mysql3000.mochahost.com/shardaqu_quiz";
//String db = "quiz";
System.out.println("run");
String user ="shardaqu_quiz";
String pass="Root@123";
System.out.println("run");
String tname=session.getAttribute("tnamee").toString();
System.out.println("tname="+tname);
System.out.println("fail");
// this section is to show select from insert 

Statement st = null;
ResultSet rs=null;




Class.forName(driver);
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root","root");

st = conn.createStatement();
//String query = "SELECT * FROM quiz.question_deatil";

//String query = "SELECT * FROM quiz."+tname+"";
System.out.println("Success2");
//Creating the PreparedStatement object
String query = "SELECT * FROM "+tname+"";
rs=st.executeQuery(query);
if(rs==null)
{
	System.out.println("fail");
}
else
{
	System.out.println("Sus2");
}
System.out.println("Success2");
%>
<table class="table">
  <thead>
  <tr>
      <th scope="col">id</th>
      <th scope="col">Question</th>
      <th scope="col">Choice A</th>
      <th scope="col">Choice B</th>
      <th scope="col">Choice C</th>
      <th scope="col">Choice D</th>
      <th scope="col">Correct Answer</th>
    </tr>
  </thead>
  <tbody>
  <%
while(rs.next()) {
	%><tr>
      
	<th scope="row"><%out.println(rs.getInt(1));%></th>
	<td><%out.println(rs.getString(2));%></td>
	<td><%out.println(rs.getString(3));%></td>
	<td><%out.println(rs.getString(4));%></td>
	<td><%out.println(rs.getString(5));%></td>
	<td><%out.println(rs.getString(6));%></td>
	<td><%out.println(rs.getString(7));%></td>  </tr>
<%
}%>

</tbody>
</table>
<%

%>
<%

}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("error.jsp");
}
%>
<table>
<tr>
<td>
<form method="post" action="qlist.html">
<input type="Submit" value="Back to Login">
</form>
</td>
<td>
<form method="post" action="fdelete.html">
<input type="Submit" value="Delete">
</form>
</td>
</tr>
</table>

</body>
</html>