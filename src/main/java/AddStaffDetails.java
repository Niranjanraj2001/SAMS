

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddStaffDetails")
public class AddStaffDetails extends HttpServlet {


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try(PrintWriter out = response.getWriter()){
			
			String eid = request.getParameter("employeid");
			String sname = request.getParameter("staffname");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentDetails", "root", "1234");
			java.sql.Statement stmt =  con.createStatement();
			

			int value = stmt.executeUpdate("insert into AddStaff(employeid,staffname,email,password) values('"+eid+"','"+sname+"','"+email+"','"+password+"')");
			
			if(value == 1) {
				response.sendRedirect("AddFaculty.jsp");
				
			}else {
				out.println("not inserted");
			}
		}catch(Exception e) {
		System.out.println(e);
		
	}

}
	
}
