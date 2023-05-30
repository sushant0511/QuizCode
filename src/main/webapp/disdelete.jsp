<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page import ="java.sql.*" %>
<body>
<%
String emailofFac=session.getAttribute("femailforquesup").toString();
// here session variable is change because of update
System.out.println("vlue="+emailofFac);
Connection conn = null;
Statement st=null;
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://mysql3000.mochahost.com/shardaqu_quiz";


String user ="shardaqu_quiz";
String pass="Root@123";


ResultSet qrst;
ResultSet rs = null;

try {

Class.forName(driver).newInstance();
conn = DriverManager.getConnection(url,user,pass);
String tname="";
st = conn.createStatement();
//String query = "SELECT * FROM quiz.question_deatil";

String query1="SELECT * FROM faculties where femailid='"+emailofFac+"'";
rs=st.executeQuery(query1);
while(rs.next())
{
	 tname=rs.getString(5);
	 System.out.println(rs.getString(3));
	break;
}
System.out.println("ss"+tname);
session.setAttribute("tnamedelete", tname);
%>

 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
 
    <center><h1>Please process your next step!</h1></center><br><br><br>
<div class="container">
<form method="post" action="deletesuccess.jsp">
<div class="form-group">
    <label for="exampleInputEmail1">Enter Question ID to Delete</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="iddelete">
    <small id="emailHelp" class="form-text text-muted">Id can be view on Display page.</small>
  </div>
 
<input type="submit" value="delete" name="delete">
</form>
</div>







<%
System.out.println("Success");
}


catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("error.jsp");
}
if (conn != null) conn.close();


%>

</body>
</html>