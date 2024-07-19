<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Model.Attendance"%> <!-- Replace with your actual package name -->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>
</head>
<body>
    <h1>Attendance Submitted Successfully</h1>
    <form action="SaveToDatabaseServlet" method="post">
        <table>
            <tr>
                <td>Name</td>
                <td>RollNo</td>
                <td>Attendance</td>
                <td>Date</td>
            </tr>
            <%
                ArrayList<Attendance> attendanceList = (ArrayList<Attendance>) session.getAttribute("attendanceList");
                if (attendanceList != null) {
                    for (Attendance student : attendanceList) {
            %>
            <tr>
                <td><%= student.getName() %></td>
                <td><%= student.getRollno() %></td>
                <td><%= student.getAttendance() %></td>
                <td><%= student.getDate() %></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
        <input type="submit" value="Save to Database">
    </form>
</body>
</html>