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
String b=request.getParameter("s");
out.println("Your department is "+b);
int count=0;
String un="";

Connection conn = null;
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/quiz";
//String db = "quiz";

String user ="root";
String pass="root";


Statement st = null;
ResultSet qrst;
ResultSet rs = null;
// this is faculty id 
String table=(String)session.getAttribute("tid");
// this is student table to insert result
String tableforins=session.getAttribute("tableforinsertt").toString();
// this is student primary key to login
String email=session.getAttribute("sidforresult").toString();

try {

Class.forName(driver).newInstance();
conn = DriverManager.getConnection(url,user,pass);

st = conn.createStatement();
//String query = "SELECT * FROM quiz.question_deatil";

st = conn.createStatement();
String query = "SELECT * FROM "+table+" where id='1'";
//Creating the PreparedStatement object
rs=st.executeQuery(query);


while(rs.next()) 
	{
un=rs.getString("correctAns");
	}

//System.out.println("ss"+un);
}
catch(Exception e)
{}

String g=null;
	
g=request.getParameter("as");
//System.out.println(g);
if(g.equals(un)){

count++;
//out.println("Correct");

}
else
out.println("false");
//System.out.println("table name for nsert="+table);

//System.out.println("answer="+count);
String ins="UPDATE "+tableforins+" SET q1='"+count+"' WHERE `semail`='"+email+"'";

st.executeUpdate(ins);
session.setAttribute("count1", count);
response.sendRedirect("chequesub2.jsp");

%>
</body>
</html>