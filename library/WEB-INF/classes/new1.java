import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;

public class new1 extends HttpServlet  
{    
     public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException 
      {  
         PrintWriter out = res.getWriter();  
         res.setContentType("text/html");  
         out.println("<html><body>");  
         try 
         {  
		 Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "abhishek");
			Statement stmt = conn.createStatement(); 
            ResultSet rs = stmt.executeQuery("Select * from issue1 where userName=?");
 
             out.println("books taken by students");  
             out.println("<html><head></head><body bgcolor=seagreen><table border=2><tr><th>id no</th><th>Book name</th><th>date of issue</th><th>Date of expiry</th></tr>");  
             while (rs.next()) 
             {  
                 String n = rs.getString("userName");  
                 String m = rs.getString("lbn");
                 String o = rs.getString("ldoi");
				 String p = rs.getString("ldoe");
				 
                 out.println("<tr><td>" + n + "</td><td>" + m + "</td><td>" + o + "</td><td>"+ p +"</td></tr>");   
             }       
             out.println("</table>");  
             out.println("</body></html>");  
             conn.close();  
            } 
             catch (Exception e) 
            {  
             out.println("error");  
         }  
     }
	 }