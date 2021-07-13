
<%@ page import="com.mysql.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
    <!-- META TAGS -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="EEducation master is one of the best eEducational html template, it's suitable for all eEducation websites like university,college,school,online eEducation,tution center,distance eEducation,computer eEducation">
    <meta name="keyword" content="eEducation html template, university template, college template, school template, online eEducation template, tution center template">
    <!-- FAV ICON(BROWSER TAB ICON) -->
    <link rel="shortcut icon" href="images/fav.ico" type="image/x-icon">
    <!-- GOOGLE FONT -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700%7CJosefin+Sans:600,700" rel="stylesheet">
    <!-- FONTAWESOME ICONS -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- ALL CSS FILES -->
    <link href="css/materialize.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <!-- RESPONSIVE.CSS ONLY FOR MOBILE AND TABLET VIEWS -->
    <link href="css/style-mob.css" rel="stylesheet" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body> 
  
<span id="mylocation"></span> 
<div id="templatemo_menu_wrapper">
    <div id="templatemo_menu">
        
         <ul>
           <li><a href="index.html">Home</a></li>
                    <li><a href="admin.jsp">Adminstrator</a></li>
                    <li><a href="studentlogin.jsp">Student</a></li>
                    <li><a href="http://localhost:8080/library/books.jsp">Book Details</a></li>
                     <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="contactus.jsp">Contact Us</a></li>
                </ul>    	
     
    </div> <!-- end of templatemo_menu -->
</div>

<div id="templatemo_content_wrapper">

	<div id="templatemo_sidebar">
    
    	<div class="sidebar_box">
        	
            <h2>Announcements</h2>
            
            <div class="news_box">
                <a href="#">Fusce sit amet nunc lectus, at pretium augue. Pellentesque tortor felis.</a>
                <p class="post_info">Posted by <a href="#">Admin</a> on <span>April 30, 2048</span></p>
            </div>
            
            <div class="news_box">
                <a href="#">Integer imperdiet, justo ut venenatis vehicula, magna mi placerat felis.</a>
                <p class="post_info">Posted by <a href="#">Admin</a> on <span>April 22, 2048</span></p>
            </div>
            
            <div class="news_box">
                <a href="#">Sed justo dolor, convallis at, vestibulum vitae, elementum eu, pede.</a>
                <p class="post_info">Posted by <a href="#">Admin</a> on <span>April 14, 2048</span></p>
            </div>
        
        </div><div class="sidebar_box_bottom"></div>
        
        <div class="sidebar_box">
			
           <h2>JAVA</h2>
            
            <div class="section_w250 float_l">
				<h3>Core Java</h3>            
				<p>oops is a concept of core java so. javatpoint.com ,is realy a very good website we must visit,on this web site,to know java in defth .</p>
           </div>
            
            <div class="cleaner"></div>
        
        </div><div class="sidebar_box_bottom"></div>
    
    </div> <!-- end of sidebar -->
    
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
                            <div class="sb2-2-3">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box-inn-sp">
                                <div class="inn-title">
                                    <h4>Student Details</h4>
                                    <p>All about students like name, student id, phone, email, country, city and more</p>
                                </div>
                                <div class="tab-inn">
                                    <div class="table-responsive table-desi">
                                        <table class="table table-hover">
	        <thead>
	            <tr>
	            	<th><b>Book Name</b></th>
	                <th><b>Book code</b></th>
	                <th><b>Author</b></th>
					<th><b>Date of arrival</b></th>
					<th><b>Price</b></th>
					<th><b>Rack No</b></th>
					<th><b>No of books</b></th>
					<th><b>Subject code</b></th>
	            </tr>
	        </thead>
				        <tbody>


	            <%
	                Class.forName("com.mysql.jdbc.Driver");
	                Connection conn = null;
	                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "abhishek");
	                Statement stmt = null;
	                stmt = conn.createStatement();
	                String query = "select * from addbooks";
	                ResultSet rs = null;
	                rs = stmt.executeQuery(query);
	                while(rs.next()){
	            %>
	            <tr>
	                <%
	            String n = rs.getString("bn");  
                 String m = rs.getString("bc");
                 String o = rs.getString("aut");
				 String p = rs.getString("doa");
				 String q = rs.getString("pr");
				 String r = rs.getString("rn");
				 String s = rs.getString("nob");
				 String t = rs.getString("sc");
	                
	                %>
	                <td><%=n %></td>
	                <td><%=m %></td>
	                <td><%=o %></td>
					<td><%=p %></td>
					<td><%=q %></td>
					<td><%=r %></td>
					<td><%=s %></td>
					<td><%=t %></td>
	            </tr>               

	            <%      
	                }
	            %>

	        </tbody>
          
             	</table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
				
            <div class="section_w250 float_l">
           </div>
          
				</form>
        </div><div class="content_box_bottom"></div>
        
        <div class="content_box">
        
        	<h2>Testimonial</h2>
            
            <div class="section_w250 float_l">
				<h3>Praesent sollicitudin</h3>            
				<p>Nullam faucibus volutpat sapien sit amet tristique. Suspendisse venenatis, urna nec rhoncus suscipit, turpis turpis auctor nisi.</p>
            
            </div>  
            
            <div class="section_w250 float_r">
				<h3>Quisque blandit</h3>            
				<p>Morbi blandit ipsum sed purus vestibulum bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec nibh sed tellus.</p>
            
            </div>            
           
        
        	<div class="cleaner"></div>
        </div><div class="content_box_bottom"></div>
    
    </div> <!-- end of content -->
    
    <div class="cleaner"></div>

</div>
</body>
</html>