<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>StudentDetails</title>
</head>
<body>

<form action="AddStudent">

<table>
<h2>Add Student</h2>


<tr>
	
 	<th>Roll No</th>
 	<th>Student Name</th>
 	<th>Email</th>
 	<th></th>
 

</tr>
<tr>
	<td><input type="text" name="rollno" placeholder="Roll No" required></td>
	<td><input type="text" name="name" placeholder="Student Name" required></td>
	<td><input type="email" name="email" placeholder="Email " required></td>
	<td><input type="submit" value="Add"></td>
	

</tr>



</table>
</form>



</body>
</html>