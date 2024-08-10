<%@page import="java.sql.*"%>   
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Attendance</title>
</head>
<body>

<form>

	<table>
		<tr>
			<th>Roll No</th>
			<th>Name</th>
			<th>Attendance</th>
			<th>Date</th>
			
		</tr>
		
		<%
			String roll = request.getParameter("rollno");
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentDetails", "root", "1234");
		java.sql.Statement stmt =  con.createStatement();
		
		ResultSet res = stmt.executeQuery("select * from Attendance where rollno='"+roll+"' order by date");
		
		while(res.next()){
			String rollno = res.getString("rollno");
			String name = res.getString("name");
			String attendance = res.getString("attendance");
			String date = res.getString("date");
			
		%>
			
			
			<tr>
				<td><%=rollno %></td>
				<td><%=name %></td>
				<td><%=attendance %></td>
				<td><%=date %></td>
			</tr>
			
		<%}
		
		%>
		
	</table>

</form>

</body>
</html>