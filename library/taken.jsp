
<%@ page import="com.mysql.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Education</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body> 
  
<span id="mylocation"></span> 
<div id="templatemo_menu_wrapper">
    <div id="templatemo_menu">
        
         <ul>
           <li><a href="index.html">Home</a></li>
                    <li><a href="admin.jsp">Adminstrator</a></li>
                    <li><a href="studentlogin.jsp">Student</a></li>
                    <li><a href="http://localhost:8080/lib/books.jsp">Book Details</a></li>
                     <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="contactus.jsp">Contact Us</a></li>
                </ul>    	
     
    </div> <!-- end of templatemo_menu -->
</div>

<div id="templatemo_content_wrapper">

    
    <div id="templatemo_content">
    
    	<div class="content_box">
        
  <form name=F1 onSubmit="return dil(this)" action="memberlogin.jsp" >
				   <table cellspacing="10" cellpadding="8">	
				  <%if(request.getAttribute("check")!=null)
			{
			out.print("<div>");
			out.print("<font color='blue'><font size='4'>"+request.getAttribute("check")+"");
			
			out.print("</div>"); 
			}
			
			 %>
	
    <div class="container">
	    <table class="table table-striped" border="1">
	        <thead>
	            <tr>
	            	<th><b>Id No</b></th>
	                <th><b>Book Name</b></th>
	                <th><b>Date of issue</b></th>
					<th><b>Date of expiry</b></th>
	            </tr>
	        </thead>
				        <tbody>


	            <%
	                Class.forName("com.mysql.jdbc.Driver");
	                Connection conn = null;
	                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "abhishek");
	                Statement stmt = null;
	                stmt = conn.createStatement();
	                String query = "select * from issue";
	                ResultSet rs = null;
	                rs = stmt.executeQuery(query);
	                while(rs.next()){
	            %>
	            <tr>
	                <%
	             String n = rs.getString("lin");  
                 String m = rs.getString("lbn");
                 String o = rs.getString("ldoi");
				 String p = rs.getString("ldoe");
	                
	                %>
	                <td><%=n %></td>
	                <td><%=m %></td>
	                <td><%=o %></td>
					<td><%=p %></td>
	            </tr>               

	            <%      
	                }
	            %>

	        </tbody>
             	</table>
            
            <div class="section_w250 float_l">
           </div>
          
				</form>
        </div><div class="content_box_bottom"></div>

    
    </div> <!-- end of content -->
    
    <div class="cleaner"></div>

</div>
</body>
</html>