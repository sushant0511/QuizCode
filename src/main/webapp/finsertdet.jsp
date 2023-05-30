<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page language="java" import="java.sql.*" %>
<body>
<%

String name=request.getParameter("fname");
String fid=request.getParameter("femailid");
String pwd=request.getParameter("password");
String ftable=request.getParameter("tablename");

Connection con = null;
String url = "jdbc:mysql://localhost:3306/quiz";
//String db = "quiz";
String driver = "com.mysql.cj.jdbc.Driver";
String userName ="root";
String pass="root";


Class.forName(driver);
con = DriverManager.getConnection(url,userName,pass);
try{
Statement st = con.createStatement();
int i=0;
String sql="INSERT INTO faculties ( `fname`, `femailid`, `password`, `tablename`) VALUES ( '"+name+"', '"+fid+"', '"+pwd+"', '"+ftable+"')";
i=st.executeUpdate(sql);
if(i==0)
{
	response.sendRedirect("error.jsp");
}
else
{
	response.sendRedirect("success.html");
}
}
catch(Exception e)
{
System.out.println("Must be Some error Contact Mr. Sushant ");	
}


%>
</body>
</html>