<%@page import="java.sql.*"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Faculty</title>
</head>
<body>

<form action="AddStaffDetails" method="post">
<h1>Add Faculty</h1>
	<table>
		<tr>
			<th>Employee ID</th>
			<th>Staff Name</th>
			<th>Email</th>
			<th>Password</th>
		</tr>
		
		<tr>
			<td><input type="text" name="employeid" placeholder="Employe ID" required></td>
			<td><input type="text" name="staffname" placeholder="Staff Name" required></td>
			<td><input type="email" name="email" placeholder="Email" required></td>
			<td><input type="text" name="password" placeholder="Password" required></td>
			<td><input type="submit" value="Add"></td>
		</tr>
		
</table>





</form>

</body>
</html>