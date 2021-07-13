
<%@ page import="com.mysql.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
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
	<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body> 
<span id="mylocation"></span> 

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
</body>
</html>