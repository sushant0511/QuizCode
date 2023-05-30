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
String fid=request.getParameter("femailid");
String pwd=request.getParameter("password");
session.setAttribute("femailforquesup", fid);
Connection conn = null;
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://mysql3000.mochahost.com/shardaqu_quiz";
//String db = "quiz";

String user ="shardaqu_quiz";
String pass="Root@123";

Statement st = null;

ResultSet rs = null;
int flag=0;
try {

Class.forName(driver);
conn = DriverManager.getConnection(url,user,pass);

st = conn.createStatement();

String sql="SELECT * FROM faculties";
rs=st.executeQuery(sql);
while(rs.next())
{
	if(fid.equals(rs.getString(3)) && pwd.equals(rs.getString(4)))
	{
		flag=1;
		break;
	}
}


if(flag==1)
{
	response.sendRedirect("disdelete.jsp");
}
else
{
	response.sendRedirect("fupdate.html");
}
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("error.jsp");
}



if (conn != null) conn.close();

%>
</body>
</html>