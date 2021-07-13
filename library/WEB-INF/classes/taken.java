import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;

public class taken extends HttpServlet  
{    
     public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException 
      {  
         PrintWriter out = res.getWriter();  
         res.setContentType("text/html");  
         out.println("<html><body>");  
         try 
         {  
             Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","abhishek");  
System.out.println("Connection successful");
             Statement stmt = con.createStatement();  
             ResultSet rs = stmt.executeQuery("select * from issue;");
             out.println("books taken by students");  
             out.println("<html><head></head><body bgcolor=seagreen><table border=2><tr><th>id no</th><th>Book name</th><th>date of issue</th><th>Date of expiry</th></tr>");  
             while (rs.next()) 
             {  
                 String n = rs.getString("lin");  
                 String m = rs.getString("lbn");
                 String o = rs.getString("ldoi");
				 String p = rs.getString("ldoe");
				 
                 out.println("<tr><td>" + n + "</td><td>" + m + "</td><td>" + o + "</td><td>"+ p +"</td></tr>");   
             }       
             out.println("</table>");  
             out.println("</body></html>");  
             con.close();  
            } 
             catch (Exception e) 
            {  
             out.println("error");  
         }  
     }
	 }