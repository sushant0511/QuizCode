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
		
		String un=request.getParameter("sname");
		String email=request.getParameter("semailid");
		String course=request.getParameter("scourse");
		String year=request.getParameter("syear");
		String pwd=request.getParameter("spwd");
		System.out.println("pw"+pwd);
		//Store student mail id for session 
		session.setAttribute("sidforresult", email);
				Connection con=null;
		try
		{
				Class.forName("com.mysql.cj.jdbc.Driver");
		String dbUrl="jdbc:mysql://mysql3000.mochahost.com/shardaqu_quiz";
		String user="shardaqu_quiz";
		String password="Root@123";
		String table=course+year;
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root","root");
		Statement stmt=con.createStatement();
		String sql="SELECT * FROM "+table+"";
	ResultSet rs=stmt.executeQuery(sql);
	int flag=0;
	System.out.println(table);
	System.out.println(email);
	System.out.println("pw"+pwd);
	System.out.println("one");
	session.setAttribute("tableforinsertt", course+year);
	//System.out.println(tableforins);
	while(rs.next())
	{
		if(email.equals(rs.getString("semail")) && pwd.equals(rs.getString("spassword"))) 
		{
			flag=1;
		}
	}
	//System.out.println("two");
		if(flag==1)
		{
			response.sendRedirect("attempt.html");
		}
		else
		{
			%>
			<%response.sendRedirect("index.html");
		}
		System.out.println("three");
				}
				catch(Exception e)
				{
					response.sendRedirect("index.html");
					//response.sendRedirect("error.jsp");
				}
		
		
		%>	



</body>
</html>