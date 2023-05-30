<%@page language="java" import="java.sql.*" %>

<%

String tablename=session.getAttribute("tnameforinsert").toString();
System.out.println("Table Name="+tablename);
//String tablename=(String)session.getAttribute("tid");

//Connection con = null;
String url = "jdbc:mysql://mysql3000.mochahost.com/shardaqu_quiz";
//String db = "quiz";
String driver = "com.mysql.cj.jdbc.Driver";
String userName ="shardaqu_quiz";
String pass="Root@123";


Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root","root");
try{
Statement st = conn.createStatement();
int id=Integer.parseInt(request.getParameter("id").toString());
String quest = request.getParameter("quest").toString();
String QA = request.getParameter("QA").toString();
String QB = request.getParameter("QB").toString();
String QC = request.getParameter("QC").toString();
String QD = request.getParameter("QD").toString();
String correctAns = request.getParameter("correctAns").toString();
out.println("quest : " + quest);

String qry = "INSERT INTO "+tablename+" (`id`, `quest`, `qa`, `qb`, `qc`, `qd`, `correctAns`,`va`, `vb`, `vc`, `vd`) values("+id+",'"+quest+"','"+QA+"','"+QB+"','"+QC+"','"+QD+"','"+correctAns+"', 'a', 'b', 'c', 'd')";

//out.println("qry : " + qry);

int val = st.executeUpdate(qry);


if(val>0)
{
//	System.out.println(id);
response.sendRedirect("moreentry.html");

}
else
{
	response.sendRedirect("error.jsp");
}
}


catch(SQLException ex){
System.out.println("SQL satatment not found"+ex);
//response.sendRedirect("error.jsp");
}

catch(Exception e){
//e.printStackTrace();
//response.sendRedirect("error.jsp");
}


%>

<html>
<title>Enter Your Question</title>
<head>

<script>

function validateForm(theForm){

if(theForm.quest.value==""){
//Please enter username
alert("Please enter Question.");
theForm.quest.focus();
return false;
}

return true;
} 
</script>
</head>

<body>
<br>
<br/>
<center>

<table border="1" width="450px" bgcolor="cyan" cellspacing="0" cellpadding="0">
<tr>
<td width="100%">
<form method="POST" action="" onsubmit="return validateForm(this);">

<h2 align="center"><font color="red">Enter Your question here</font></h2>
<table border="0" width="400px" cellspacing="2" cellpadding="4">
<tr>
<td width="50%"><b>Enter Question Id</b></td>
<td width="50%"><input type="text" name="id" size="40"/> </td>
</tr>

<tr>
<td width="50%"><b>Enter Question:</b></td>
<td width="50%"><input type="text" name="quest" size="40"/> </td>
</tr>
<tr>
<td width="50%"><b>Enter First Answer(A.):</b></td>
<td width="50%"><input type="text" name="QA" size="40"/> </td>
</tr>
<tr>
<td width="50%"><b>Enter Second Answer(B.):</b></td>
<td width="50%"><input type="text" name="QB" size="40"/> </td>
</tr>

<tr>
<td width="50%"><b>Enter Third Answer(C.):</b></td>
<td width="50%"><input type="text" name="QC" size="40"/> </td>
</tr>

<tr>
<td width="50%"><b>Enter Fourth Answer(D.):</b></td>
<td width="50%"><input type="text" name="QD" size="40"/> </td>
</tr>

<tr>
<td width="50%"><b>Correct Answer(a,b,c and d):</b></td>
<td width="50%"><input type="text" name="correctAns" size="10"/> </td>
</tr> 

</table>
<center>
<p><input type="submit" value="Submit" name="submit">
<input type="reset" value="Reset" name="reset"></p>
</center> 
</form>
</td>
</tr>
</table>
</center>
</body>
</html>