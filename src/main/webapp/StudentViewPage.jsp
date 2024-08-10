<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student View Page</title>
</head>
<body>

<h1>Student View Page</h1>

<%

String roll=(String)session.getAttribute("rollno");

%>

<a href="ShowStudentAttendance.jsp?rollno=<%=roll%>">Show Attendance</a>

</body>
</html>