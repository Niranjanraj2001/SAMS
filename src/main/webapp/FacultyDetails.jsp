<%@page import="java.sql.*"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Faculty Details</title>
</head>
<body>

<form>
<h2>Faculty Details</h2>
	<table>
		<tr>
			<th>Sno</th>
			<th>Employe ID</th>
			<th>Faculty Name</th>
			<th>Email</th>
			
		</tr>
		<% 
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentDetails", "root", "1234");
		java.sql.Statement stmt =  con.createStatement();
		
		ResultSet res = stmt.executeQuery("select * from AddStaff");
		
		while(res.next()){
			String sno = res.getString("sno");
			String employeid = res.getString("employeid");
			String email = res.getString("email");
			String facultyname = res.getString("staffname");
			
			%>
			
			<tr>
				<td><%=sno %></td>
				<td><%= employeid %></td>
				<td><%= facultyname %></td>
				<td><%=email %></td>
				
			</tr>
			
			
		<% }
		
		%>
	
	</table>




</form>

</body>
</html>