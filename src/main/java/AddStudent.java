

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddStudent")
public class AddStudent extends HttpServlet {
	

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try(PrintWriter out = response.getWriter()){
			
			String rollno = request.getParameter("rollno");
			String sname = request.getParameter("name");
			String email = request.getParameter("email");
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentDetails", "root", "1234");
			java.sql.Statement stmt =  con.createStatement();
			
			int value = stmt.executeUpdate("insert into AddStudent(rollno,studentname,email) values('"+rollno+"','"+sname+"','"+email+"')");
			
			if(value == 1) {
				response.sendRedirect("StudentDetails.jsp");
			}
			
		}catch(Exception e) {
		System.out.println(e);	
		}
	}

}
