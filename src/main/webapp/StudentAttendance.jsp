<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Attendance</title>
</head>
<body>
    <form action="AttendanceSubmition" method="post">
        <label for="attendanceDate">Date:</label>
        <input type="date" id="attendanceDate" name="attendanceDate" required>
        <table>
            <tr>
                <th>Name</th>
                <th>RollNo</th>
                <th>Present</th>
                <th>Absent</th>
            </tr>
            
            <%  
            Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentDetails", "root", "1234");
			java.sql.Statement stmt =  con.createStatement();
			
			
            ResultSet rs = stmt.executeQuery("select * from AddStudent;");
            
            while(rs.next()) {
                String name = rs.getString("studentname");
                String rollno = rs.getString("rollno");
            %>
            
            <tr>
                <td><input type="text" value="<%=name %>" disabled></td>    
                <td><input type="text" value="<%=rollno %>" disabled></td>
                <td><input type="radio" name="attendance_<%=rollno %>" value="Present"></td>
                <td><input type="radio" name="attendance_<%=rollno %>" value="Absent"></td>
                						
                <input type="hidden" name="name_<%=rollno %>" value="<%=name %>">
                <input type="hidden" name="rollno_<%=rollno %>" value="<%=rollno %>">
            </tr>

            <%
            } 
            %>
            
            <tr>
                <td colspan="3">
                    <input type="submit" value="Submit Attendance">    
                </td>
            </tr>
        </table>
    </form>
</body>
</html>