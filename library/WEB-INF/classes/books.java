import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;

public class books extends HttpServlet  
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
             ResultSet rs = stmt.executeQuery("select * from addbooks;");
             out.println("Currently existing books are");  
             out.println("<html><head></head><body bgcolor=seagreen><table border=2><tr><th>BNAME</th><th>BCODE</th><th>AUTHOR</th><th>DATEOFARR</th><th>PRICE</th><th>RACKNO</th><th>NOOFBOOKS</th><th>SUBJCODE</th></tr>");  
             while (rs.next()) 
             {  
                 String n = rs.getString("bn");  
                 String m = rs.getString("bc");
                 String o = rs.getString("aut");
				 String p = rs.getString("doa");
				 String q = rs.getString("pr");
				 String r = rs.getString("rn");
				 String s = rs.getString("nob");
				 String t = rs.getString("sc");
				 
                 out.println("<tr><td>" + n + "</td><td>" + m + "</td><td>" + o + "</td><td>"+ p +"</td><td>"+ q +"</td><td>"+ r +"</td><td>"+ s +"</td><td>"+ t +"</td></tr>");   
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