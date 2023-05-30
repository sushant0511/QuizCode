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
//String emailofFac=session.getAttribute("femailforques").toString();
//System.out.println("vlue="+emailofFac);
String idtodel=request.getParameter("iddelete");
int id=Integer.parseInt(idtodel);

Connection conn = null;
try
{
String driver = "com.mysql.jdbc.Driver";
//String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/quiz";
//String db = "quiz";
//int x=0;
String user ="root";
String pass="root";
String tname=session.getAttribute("tnamedelete").toString();
System.out.println("tnamedelete="+tname);
Statement st = null;
Class.forName(driver);
conn = DriverManager.getConnection(url,user,pass);

st = conn.createStatement();
System.out.println("Success2");
//Creating the PreparedStatement object
String query = "DELETE FROM "+tname+" WHERE id='"+id+"'";
int status=0;
status=st.executeUpdate(query);
if(status==0)
{
	response.sendRedirect("facultyrole.jsp");
}
else
{
	response.sendRedirect("qlist.html");
}
}

catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("error.jsp");
}

%>


</body>
</html>