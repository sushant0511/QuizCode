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

Class.forName("com.mysql.jdbc.Driver").newInstance();
String url = "jdbc:mysql://localhost:3306/quiz";
//String db = "quiz";
int x=0;
System.out.println(x);
String user ="root";
String pass="root";
Connection conn = null;
conn=DriverManager.getConnection(url,user,pass);
Statement st = null;
st=conn.createStatement();

ResultSet qrst;
ResultSet rs = null;
rs=st.executeQuery("SELECT * FROM quiz.questionlength");
while(rs.next())
{
	 x=rs.getInt(2);
}
System.out.println("value="+x);
session.setAttribute("noofques", x);
System.out.println("in string="+x);
response.sendRedirect("extremeprocess.jsp"); %>	
</body>
</html>