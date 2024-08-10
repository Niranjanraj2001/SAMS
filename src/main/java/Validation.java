

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Validation")
public class Validation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		response.setContentType("text/html");
		
		try(PrintWriter out = response.getWriter()){
			
			String uname = request.getParameter("uname");
			String pwd = request.getParameter("pwd");
			
			int flag = 0; 
			
			if("admin".equals(uname) && "admin@123".equals(pwd)) {
				response.sendRedirect("AdminViewPage.jsp");
				flag = 1;
			}
			else {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentDetails", "root", "1234");
				java.sql.Statement stmt =  con.createStatement();
				
				ResultSet res = stmt.executeQuery("select * from AddStaff");
				
				
				while(res.next()) {
					String staffname = res.getString("staffname");
					String spass = res.getString("password");
					
					if(uname.equals(staffname) && pwd.equals(spass)) {
						flag = 1;
						RequestDispatcher rd = request.getRequestDispatcher("StaffPage.jsp");
						rd.forward(request, response);
					}
					
				}
				
				if(flag == 0){
					out.println("username and password match");
				}
//				if(flag == 0) {
//					ResultSet res1 = stmt.executeQuery("select * from AddDetailse");
//					
//					while(res1.next()) {
//						String sname = res1.getString("studentname");
//						String spass = res1.getString("password");
//						
//						if(uname.equals(sname) && pwd.equals(spass)) {
//							out.println("Student login Sucessfully");
//							flag = 1;
////							RequestDispatcher rd = request.getRequestDispatcher("UserHome.jsp");
////							rd.forward(request, response);
//						}else if(flag == 0) {
//			//				out.println("Username and Password Invalid");
//							RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
//							rd.forward(request, response);
//							
//						}
//						
//					}
//				}
				
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
	}

}
