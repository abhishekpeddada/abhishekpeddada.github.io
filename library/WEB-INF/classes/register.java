import java.sql.*;
import jakarta.servlet.*;
public class register extends GenericServlet
{
                  Connection con;

            public void init(ServletConfig sc)
            {
             try
             {
              super.init(sc);
              Class.forName("com.mysql.jdbc.Driver");
              con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","abhishek");
             }
             catch(Exception e){e.printStackTrace();}
            }

            public void service(ServletRequest req,ServletResponse res)
            {
             try
             {
              Statement st = con.createStatement();
		String user = req.getParameter("userName");
        String pass = req.getParameter("pass");
              ServletOutputStream sos = res.getOutputStream();
              int i = st.executeUpdate("insert into student values('"+user+"','"+pass+"')");
              if(i>0)
               sos.println("data is successfully added");
              else
               sos.println("data is not added");
             }
              catch(Exception e){e.printStackTrace();}
           }
}

               

