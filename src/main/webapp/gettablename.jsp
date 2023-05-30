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
String emailofFac=session.getAttribute("femailforquesinsert").toString();
System.out.println("vlue="+emailofFac);
Connection conn = null;
String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://mysql3000.mochahost.com/shardaqu_quiz";
//String db = "shardaqu_quiz";

String user ="shardaqu_quiz";
String pass="Root@123";
String tname="";
Statement st = null;
ResultSet rs=null;
ResultSet rs1=null;

try {

Class.forName(driver);
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root","root");

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
System.out.println("ss "+tname);
session.setAttribute("tnameforinsert", tname);
response.sendRedirect("finsertprocess.jsp");
System.out.println("Success");
}


catch(Exception e)
{
	System.out.println(e);
	//response.sendRedirect("error.jsp");
}


%>

</body>
</html>