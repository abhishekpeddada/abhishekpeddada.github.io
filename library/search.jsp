<%@ page import="java.sql.*" %>  
<%  
String name=request.getParameter("val");  
if(name==null||name.trim().equals("")){    
}else{  
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "abhishek");  
PreparedStatement ps=con.prepareStatement("select bn,aut,pr from addbooks where bn like '"+name+"%'");  
ResultSet rs=ps.executeQuery();  
  
if(!rs.isBeforeFirst()) {      
 out.println("<p><font color='red'>No Record Found!</font></p>");   
}else{  
out.print("<table border='1' cellpadding='2' width='100%' style='background-color:#FFFFE0;'>");  
out.print("<tr><th>Book name</th><th>Author</th><th>price</th></tr>");  
while(rs.next()){  
out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td></tr>");  
}  
out.print("</table>");  
}//end of else for rs.isBeforeFirst  
con.close();  
}catch(Exception e){out.print(e);}  
}//end of else  
%>  