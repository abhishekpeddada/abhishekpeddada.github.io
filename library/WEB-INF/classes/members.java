import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;

public class members extends HttpServlet  
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
             ResultSet rs = stmt.executeQuery("select * from members;");
			 out.println("Currently existing members are");  
             out.println("<html><head></head><body bgcolor=seagreen><table border=2><tr><th>MID</th><th>MNAME</th><th>MADDR</th><th>MDOI</th><th>MDOE</th><th>MSTATUS</th><th>MTYPE</th><th>AMOUNT</th></tr>");
             while (rs.next()) 
             {
				 String n = rs.getString("idno");  
                 String m = rs.getString("mname");
                 String o = rs.getString("maddress");
				 String p = rs.getString("doe");
				 String q = rs.getString("doi");
				 String r = rs.getString("som");
				 String s = rs.getString("tom");
				 String t = rs.getString("amt");
 
               out.println("<tr><td>"+ n +"</td><td>"+ m +"</td><td>"+o+"</td><td>"+p+"</td><td>"+q+"</td><td>"+r+"</td><td>"+s+"</td><td>"+t+"</td></tr>");
              }
              out.println("</table></body></html>");
              con.close();
             }
             catch(Exception ex)
			 {
				 out.println("error");
				 }
}
}
             


