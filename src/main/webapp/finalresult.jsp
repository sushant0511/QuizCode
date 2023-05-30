<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page import="java.sql.*" %>
<body>

<%
String tableforins=session.getAttribute("tableforinsertt").toString();
System.out.println(tableforins);
String email=session.getAttribute("sidforresult").toString();

String ins="UPDATE "+tableforins+" SET `spassword`=''  WHERE `semail`='"+email+"'";


int result = Integer.parseInt(session.getAttribute("count18").toString());



System.out.println("ansewer="+result);
//session.setAttribute("result", count11);
out.println("successfully submitted ");
response.sendRedirect("index.html");
//out.println("Result is "+result);




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
	

st = conn.createStatement();


st = conn.createStatement();
st.executeUpdate(ins);
}
catch(Exception e)
{
	response.sendRedirect("error.jsp");	
}




%>
</body>
</html>