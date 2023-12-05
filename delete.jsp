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
String emplid=request.getParameter("id");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/firstproject","root","root");
PreparedStatement ps=con.prepareStatement("delete from employee where id=?;");
ps.setString(1,emplid);
int status=ps.executeUpdate();
out.print("deleted Successfully");
%>
<a href="fetch.jsp"></a>
<a href="menu.html"></a>
</body>
</html>