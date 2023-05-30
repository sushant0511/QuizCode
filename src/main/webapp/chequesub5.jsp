
<%@ page import="java.sql.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<form  action="5u.jsp" method="get">


<%
String table=(String)session.getAttribute("tid");
		int j=1;

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
	//String query = "SELECT * FROM quiz.question_deatil";

	st = conn.createStatement();
	String query = "SELECT * FROM "+table+" where id='5'";
	//Creating the PreparedStatement object
	rs=st.executeQuery(query);


	while(rs.next()) {
		
		/*qu[j]=rs.getString("quest");
		qa[j]=rs.getString("qa");
		qb[j]=rs.getString("qb");
		qc[j]=rs.getString("qc");
		qd[j]=rs.getString("qd");
		correctAns[j]=rs.getString("correctAns");
	
*/
	
	
	 %>
<br>
<br/>
<center>

<table border="1" width="500px" bgcolor="pink" cellspacing="0" cellpadding="0">
<tr>
<td width="100%">



<h2 align="center"><font color="red">Online Quiz Application</font></h2>

<b>Select Correct Answer</b>
<table border="0" width="500px" cellspacing="2" cellpadding="4">
<tr>

<td width="50%"> Question:</td>

<tr>
<td><%= rs.getString("quest") %></td></tr>
<tr>
<td>

1: <input type="radio" name="as" value=<%= rs.getString("va") %> size=70/></td>
<td><%= rs.getString("QA") %></td></tr>
<tr>
<td>
2: <input type="radio" name="as" value=<%= rs.getString("vb") %> /></td>
<td><%= rs.getString("QB") %></td></tr>

<tr>
<td>
3: <input type="radio" name="as" value=<%= rs.getString("vc") %> /></td>
<td><%= rs.getString("QC") %> </td></tr>

<tr>
<td>
4: <input type="radio" name="as" value=<%= rs.getString("vd") %> /> </td>
<td> <%= rs.getString("QD") %> </td></tr>


</table>

<input type="submit" value="Submit" name="submit">





</td>
</tr>
</table>
</center>

<%%>

<%
}}

catch (Exception ex) {
ex.printStackTrace();
//out.println(ex);

%>

<%

} finally {
if (rs != null) rs.close();
if (st != null) st.close();
if (conn != null) conn.close();
}
%>

</form>

</body>
</html>