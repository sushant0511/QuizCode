<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
System.out.println("Input");
java.util.Scanner sc=new java.util.Scanner(System.in);
String a[]=new String[10];
int i;
for(i=0;i<3;i++)
{
a[i]=sc.next();
}
for(i=0;i<3;i++)
{
System.out.println(a[i]);
}
	 %>
</body>
</html>