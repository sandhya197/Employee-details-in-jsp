<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,javax.sql.*" %>
<%
String empname=request.getParameter("name");
String empemail=request.getParameter("email");
String empconnum=request.getParameter("con");
String empadd=request.getParameter("add");
String empbg=request.getParameter("bg");
String empdob=request.getParameter("dob");
String empdoj=request.getParameter("doj");
String empr=request.getParameter("r");
String empproject=request.getParameter("pr");
String empstat=request.getParameter("stat");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/firstproject","root","");
PreparedStatement ps=con.prepareStatement("insert into employee(name,email,contactnumber,address,bloodgroup,dob,doj,role,project,status) values(?,?,?,?,?,?,?,?,?,?);");
ps.setString(1,empname);
ps.setString(2,empemail);
ps.setString(3,empconnum);
ps.setString(4,empadd);
ps.setString(5,empbg);
ps.setString(6,empdob);
ps.setString(7,empdoj);
ps.setString(8,empr);
ps.setString(9,empproject);
ps.setString(10,empstat);
int status=ps.executeUpdate();
out.print("Added Successfully");
%>
</body>
</html>