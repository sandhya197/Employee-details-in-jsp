<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%!ResultSet rs; %>
<%!PreparedStatement ps; %>
<%!Connection con; %>
<h2 align="center"><font><strong>The Data Fetched</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr bgcolor="blue">
<td><b>id</b></td>
<td><b>name</b></td>
<td><b>email</b></td>
<td><b>contact number</b></td>
<td><b>address</b></td>
<td><b>blood group</b></td>
<td><b>date of birth</b></td>
<td><b>date of join</b></td>
<td><b>role</b></td>
<td><b>project</b></td>
<td><b>status</b></td>
</tr>
<%
String email=request.getParameter("email");
Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/firstproject","root","");
ps=con.prepareStatement("select * from employee where email=?;");
ps.setString(1,"email");
rs=ps.executeQuery();
while(rs.next()){
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(8)%></td>
<td><%=rs.getString(9)%></td>
<td><%=rs.getString(10)%></td>
</tr>
<%
}
%>
</table>
</body>
</html>