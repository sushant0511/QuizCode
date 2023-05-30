<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%@ page import ="java.sql.*" %>
	<body>
				<%
		try
				{
		String fpwd=session.getAttribute("fpwd").toString();
		String table=session.getAttribute("studenttable").toString();
			System.out.println("pw new"+fpwd);
Class.forName("com.mysql.cj.jdbc.Driver");
		String dbUrl="jdbc:mysql://mysql3000.mochahost.com/shardaqu_quiz";
		String user="shardaqu_quiz";
		String password="Root@123";
		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root","root");
		Statement st=con.createStatement();
		String Countro=session.getAttribute("controws").toString(); 
		System.out.println("Count="+Countro);
		
		int Countrow=Integer.parseInt(Countro);
		int count=1;	
		Statement stmt=con.createStatement();
		
		//stmt.executeUpdate(clearpass);
		
		
		for( count=0;count<=Countrow;count++)
		{
			String setPass="UPDATE "+table+" SET `spassword`='"+fpwd+"' WHERE `id`='"+count+"'";
			stmt.executeUpdate(setPass);
		}
		response.sendRedirect("facultyrole.jsp");	
		System.out.println("three");
				}
				catch(Exception e)
				{
					System.out.println("Exception new"+e);
					//response.sendRedirect("error.jsp");
				}
		
		
		%>	


</body>
</html>