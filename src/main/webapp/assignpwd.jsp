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
		String fpwd=request.getParameter("fpwd");
		System.out.println("pw"+fpwd);
		session.setAttribute("fpwd", fpwd);
Class.forName("com.mysql.cj.jdbc.Driver");
				String table=course+year;
		session.setAttribute("studenttable", table);
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root","root");
		Statement st=con.createStatement();
		String strQuery = "SELECT COUNT(*) FROM "+table+"";
		ResultSet rs = st.executeQuery(strQuery);
		String Countro="";
		while(rs.next()){
		Countro = rs.getString(1);
		out.println("Success");
		}
		System.out.println(Countro);
		int Countrow=Integer.parseInt(Countro);
		
		rs.close();
	  st.close();
	  int count=1;	
		Statement stmt=con.createStatement();
		
		//stmt.executeUpdate(clearpass);
		for( count=0;count<=Countrow;count++)
		{
			String clearpass="UPDATE "+table+" SET `spassword`=''  WHERE `id`='"+count+"'";
			//String q10="UPDATE "+table+" SET `Q10`=''  WHERE `id`='"+count+"'";
			//String queryy="UPDATE "+table+" SET `spassword` = '',`q1` = '',`q2` = '',`q3` = '',	`Q4` = '',`Q5` = '',`Q6` = '',`q7` = '',`Q8` = '',`Q9` = '',`Q10` = '' WHERE `id`='"+count+"'";
			//stmt.executeUpdate(q10);
			stmt.executeUpdate(clearpass);
			
		}
		session.setAttribute("controws", Countrow);
		
		
		
				
		System.out.println("thre");
		response.sendRedirect("setnewpwd.jsp");
				}
				catch(Exception e)
				{
				//	response.sendRedirect("error.jsp");
					
					System.out.println("Exception"+e);
				}
		
				//response.sendRedirect("setnewpwd.jsp");
				
		%>	


</body>
</html>