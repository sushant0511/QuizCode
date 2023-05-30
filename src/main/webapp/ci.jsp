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
<%   String tid=request.getParameter("ftablename");
session.setAttribute("tid", tid);

	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/quiz";
	//String db = "quiz";

	String user ="root";
	String pass="root";

	boolean flag=false; 
	try {

	Class.forName(driver);
Connection	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root","root");
	
	Statement stmt=conn.createStatement();
	
	ResultSet rs=null;
	rs=conn.getMetaData().getTables(null, null, tid, null);
	while(rs.next())
	{
		String tname=rs.getString("TABLE_NAME");
		if(tname!=null && tname.equals(tid))
		{
			flag=true;
			break;
		}
	}
		if(flag==true)
	{
	response.sendRedirect("storelength.jsp");	
	}
	else
	{
		response.sendRedirect("tidfail.html");
	}
	
	}
	catch(Exception e)
	{
		//response.sendRedirect("tidfail.html");
		response.sendRedirect("error.jsp");
		System.out.println(e);
	}
	
	%>
	
	
	
	</body>
</html>