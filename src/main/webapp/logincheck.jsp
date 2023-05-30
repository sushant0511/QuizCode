<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<% 

String fname=request.getParameter("fname");
String femailid=request.getParameter("femailid");
Connection con = null;
String url = "jdbc:mysql://mysql3000.mochahost.com/shardaqu_quiz";
//String db = "quiz";
String driver = "com.mysql.jdbc.Driver";
String userName ="shardaqu_quiz";
String pass="Root@123";


Class.forName(driver).newInstance();
con = DriverManager.getConnection(url,userName,pass);
int flag=0;
try{
	
	Statement st = con.createStatement();
	String sql="SELECT * FROM quiz.faculties";
	ResultSet rs=st.executeQuery(sql);
	while(rs.next())
	{
		if(fname.equals(rs.getString(2)) && femailid.equals(rs.getString(3)))
		{
			flag=1;
		}
	}
	
	if(flag==1)
	{
		response.sendRedirect("loginconfirm.jsp");
	}
	
	else
	{
		response.sendRedirect("index.html");
	}
}
	catch(Exception e)
	{
		response.sendRedirect("error.jsp");
	}

	%>
}
</body>
</html>