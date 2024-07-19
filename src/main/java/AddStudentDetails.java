

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddStudentDetails")
public class AddStudentDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try(PrintWriter out = response.getWriter()){
			
			String rollno = request.getParameter("rollnum");
			String name = request.getParameter("studentname");
			String password = request.getParameter("password");
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentDetails", "root", "1234");
			java.sql.Statement stmt =  con.createStatement();
			
			int value = stmt.executeUpdate("insert into AddDetailse (roll_no,studentname,password) values ('"+rollno+"','"+name+"','"+password+"')");
			
			if(value == 1) {
				out.println("update Successfully");
			}
			
			else {
				out.println("Not Updated");
			}
			
		}catch(Exception e) {
			System.out.println(e);		}
		
	}

}
