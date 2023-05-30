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
		String course=request.getParameter("scourse");
		String year=request.getParameter("syear");
		
		Class.forName("com.mysql.jdbc.Driver");
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/quiz";
		//String db = "quiz";
		//int x=0;
		String user ="root";
		String pass="root";
		String table=course+year;
		session.setAttribute("studenttable", table);
		
		Connection con=DriverManager.getConnection(url,user,pass);
		Statement st=con.createStatement();
		//String strQuery = "SELECT * FROM "+table+"";
		//String strQuery = "SELECT * FROM quiz.bca3rd";
		ResultSet rs=st.executeQuery("SELECT * FROM "+table+"");
		System.out.println("thre");
		String s[]=new String[50];
		int i=0;
		String query=null;
		while(rs.next())
		{
			
		s[i]=rs.getString(2);
		i++;
		}
		System.out.println("Count="+i);
		for (int j=0;j<i;j++)
		{
			System.out.println(s[j]);
		
		query="UPDATE "+table+" SET `q1`=NULL, `q2`=NULL, `q3`=NULL, `Q4`=NULL, `Q5`=NULL, `Q6`=NULL, `q7`=NULL, `Q8`=NULL, `Q9`=NULL, `Q10`=NULL WHERE `semail`='"+s[j]+"'";
		st.executeUpdate(query);
		}
		}
				catch(Exception e)
				{
					
					System.out.println("Exception"+e);
				}
		
				response.sendRedirect("facultyrole.jsp");
		%>	


</body>
</html>