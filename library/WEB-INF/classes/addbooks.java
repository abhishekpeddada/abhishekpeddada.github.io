import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;
public class addbooks extends HttpServlet
{
          public void doPost(HttpServletRequest req,HttpServletResponse res)
          {
           try
           {
            String str1 = req.getParameter("bn");
            String str2 = req.getParameter("bc");
            String str3 = req.getParameter("aut");
            String str4 = req.getParameter("doa");
            String str5 = req.getParameter("pr");
            String str6 = req.getParameter("rn");
            String str7 = req.getParameter("nob");
            String str8 = req.getParameter("sc");
			System.out.println(str1+" "+str2+str3+" "+str4+" "+str5+" "+str6+" "+str7+" "+str8);
			res.setContentType("text/html");
			PrintWriter out=res.getWriter();
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","abhishek");
			System.out.println("connection sucessfull");
			Statement st= con.createStatement();
int r=st.executeUpdate("insert into addbooks values('"+str1+"','"+str2+"','"+str3+"','"+str4+"','"+str5+"','"+str6+"','"+str7+"','"+str8+"')");

if(r==0)
out.println("insertion failure");
else
out.println("registration success");
con.close();
st.close();
           }
		   catch(Exception e)
		   {
			   
		   }
          }
			}