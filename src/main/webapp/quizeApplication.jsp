
<%@ page import="java.sql.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<form name="form1">

<%
/*	String qu[]=new String[10];
	String qa[]=new String[10];
		String qb[]=new String[10];
	 String qc[]=new String[10];
	 String qd[]=new String[10];
	 String correctAns[]=new String[10];
	*/
		int j=1;
	Connection conn = null;
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/";
	String db = "quiz";

	String user ="root";
	String pass="root";

	Statement st = null;
	ResultSet qrst;
	ResultSet rs = null;

	try {

	Class.forName(driver);
	conn = DriverManager.getConnection(url+db,user,pass);
	
	st = conn.createStatement();
	//String query = "SELECT * FROM quiz.question_deatil";

	st = conn.createStatement();
	String query = "SELECT * FROM quiz.question_deatil where id=1";
	//Creating the PreparedStatement object
	rs=st.executeQuery(query);


	while(rs.next()) {
		
	/*	qu[j]=rs.getString("quest");
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
<input type="hidden" name="correctAns" value="<%=rs.getString(7)%>" />
<tr>
<td><%= rs.getString("quest") %></td></tr>
<tr>
<td>


1: <input type="radio" name="a" value= "QA" /></td>
<td><%= rs.getString("QA") %></td></tr> 
<tr>
<td>
2: <input type="radio" name="a" value="QB" /></td>
<td><%= rs.getString("QB") %></td></tr>

<tr>
<td>
3: <input type="radio" name="a" value="QC" /></td>
<td><%= rs.getString("QC") %> </td></tr>

<tr>
<td>
4: <input type="radio" name="a" value="QD" /> </td>
<td> <%= rs.getString("QD") %> </td></tr>

</table>







</td>
</tr>
</table>
</center>

<% g=request.getParameter("a");

if(g.equals(ans)){

count++;
out.println("Correct");

}
else
out.println("false");
%>

<%
j++;}}

catch (Exception ex) {
ex.printStackTrace();
out.println(ex);

%>

<%

} finally {
if (rs != null) rs.close();
if (st != null) st.close();
if (conn != null) conn.close();
}
/*out.println("Score="+count);*/

%>
<input type="submit" value="Submit" name="submit">
</form>
</body>
</html>