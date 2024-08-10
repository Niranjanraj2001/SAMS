

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/StudentValidation")
public class StudentValidation extends HttpServlet {
	

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try(PrintWriter out = response.getWriter()){
			String rollno = request.getParameter("rollno");
			String password = request.getParameter("password");
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentDetails", "root", "1234");
			java.sql.Statement stmt =  con.createStatement();
			
			ResultSet res = stmt.executeQuery("select * from AddStudent where rollno='"+rollno+"'");
			
			while(res.next()) {
				String roll = res.getString("rollno");
				String pass = res.getString("password");
				
				if(rollno.equals(roll) && password.equals(pass)) {
					
					response.sendRedirect("StudentViewPage.jsp");
					 
					HttpSession session=request.getSession();  
				        session.setAttribute("rollno",roll);
				}
				else {
					out.println("Roll No and Password not match");
				}
				
			}			
		}catch(Exception e) {
			System.out.println(e);
		}
	}

}
