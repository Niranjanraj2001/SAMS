<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <form action="AttendanceSubmition" method="post">
        <label for="attendanceDate">Date:</label>
        <input type="date" id="attendanceDate" name="attendanceDate" required>
        <table>
            <tr>
                <td>Name</td>
                <td>RollNo</td>
                <td>Mark Attendance</td>
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
                <td><input type="text" name="attendance_<%=rollno %>"></td>
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