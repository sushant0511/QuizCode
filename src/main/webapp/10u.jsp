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

String table=(String)session.getAttribute("tid");
//this is student table to insert result
String tableforins=session.getAttribute("tableforinsertt").toString();
//this is student primary key to login
String email=session.getAttribute("sidforresult").toString();

String b=request.getParameter("s");
out.println("Your department is "+b);

String un="";


Connection conn = null;
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://mysql3000.mochahost.com/shardaqu_quiz";


String user ="shardaqu_quiz";
String pass="Root@123";

Statement st = null;
ResultSet qrst;
ResultSet rs = null;

try {

Class.forName(driver).newInstance();
conn = DriverManager.getConnection(url,user,pass);

st = conn.createStatement();
//String query = "SELECT * FROM quiz.question_deatil";

st = conn.createStatement();
String query = "SELECT * FROM "+table+" where id='10'";
//Creating the PreparedStatement object
rs=st.executeQuery(query);


while(rs.next()) 
	{
un=rs.getString("correctAns");
	}

System.out.println("ss"+un);
}
catch(Exception e)
{}

String g=null;
int count17 = Integer.parseInt(session.getAttribute("count16").toString());
g=request.getParameter("as");
System.out.println(g);
if(g.equals(un)){

count17++;
out.println("Correct");

}
else
out.println("false");



String ins="UPDATE "+tableforins+" SET Q10='"+count17+"' WHERE `semail`='"+email+"'";

st.executeUpdate(ins);



System.out.println("ansewer="+count17);
session.setAttribute("count18", count17);
response.sendRedirect("finalresult.jsp");

%>
</body>
</html>