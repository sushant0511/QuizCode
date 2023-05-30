<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ page import="java.sql.*" %>
<body>
<% 

Connection conn = null;
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/quiz";
//String db = "quiz";

String user ="root";
String pass="root";


	Statement st = null;
	ResultSet qrst;
	ResultSet rs = null;

	try {

	Class.forName(driver).newInstance();
	conn = DriverManager.getConnection(url,user,pass);
	
	int i=2;
	session.setAttribute("quesresult", i);  // stroring counter for data
	//String query = "SELECT * FROM quiz.question_deatil";

	st = conn.createStatement();
	}
	
	catch (Exception ex) {
		System.out.println(ex);
	}
response.sendRedirect("quizattempt.jsp");
%>
</body>
</html>