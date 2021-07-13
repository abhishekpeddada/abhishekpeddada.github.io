<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Education</title>
<meta name="keywords" content="free css templates, education, school, college, university, templatemo.com" />
<meta name="description" content="Education template is for academic related websites" />
<link href="style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");
if(sds == null){alert("You are using a free package.\n You are not allowed to remove the tag.\n");}
}
</script>

<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
   for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out all Fields")
		   document.F1.username.focus()
		   return false
		}
   }

  
   if(!isNaN(document.F1.username.value))
   {
       alert("User Name  must  be  char's & can't be null")
	   document.F1.username.value=""
	   document.F1.username.focus()
	   return false
   }

   if(!isNaN(document.F1.password.value))
   {
       alert("Password  must  be  char's & can't be null")
	   document.F1.password.value=""
	   document.F1.password.focus()
	   return false
   }
   
   return true   
}
</SCRIPT>

</head>
<body>
<div id="templatemo_header_wrapper">
<!-- end of templatemo_header -->

</div> <!-- end of templatemo_menu_wrapper -->

<div id="templatemo_menu_wrapper">
    <div id="templatemo_menu">
        
        <ul>
           <li><a href="index.html">Home</a></li>
                     <li><a href="admin.jsp">Adminstrator</a></li>
                    <li><a href="studentlogin.jsp">Student</a></li>
                     <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="contactus.jsp">Contact Us</a></li>
                   </ul>    	
    
    </div> <!-- end of templatemo_menu -->
</div>

<div id="templatemo_content_wrapper">

    
     <div id="templatemo_content">
    
    	<div class="content_box">
    
    	<td valign="top">

    	
   		   
				  <%  out.print("<font color=blue>WELCOME TO ADMINISTRATION LOGIN");
	%>
    
    	<form name=F1 onSubmit="return dil(this)" action="LoginServlet" method="post" >
				   <table height="230" cellspacing="10" cellpadding="8">	
				  <%if(request.getAttribute("aa")!=null)
			{
			out.print("<div>");
			out.print("<font color='blue'><font size='3'>"+request.getAttribute("aa")+"");
			
			out.print("</div>"); 
			}
			
			 %>
	
	    			<tr><td>LOGIN NAME:</td><td> <input type="text" name="username"/></td></tr>
					
					<tr><td>PASSWORD:</td><td> <input type="password" name="password"/></td></tr>
					
					<tr><td></td><td><input type="submit" value="Submit"/>
					
                   
                   <INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
                   
             	</table>
             	<h2></h2>
            
            <div class="section_w250 float_l">
				<h3></h3>            
				<p></p>
           </div>
          
				</form>
  		
			</td>
	
        <%--
        	
          <div class="cleaner_h20"></div>
            
            <div class="image_fl">
	            <img src="images/templatemo_images01.jpg" alt="image" />
            </div>
            
            <div class="section_w250 float_r">
            
            	<ul class="list_01">
                   	  <li></li>
                      <li>Nunc luctus eros eu enim gravida ut </li>
                      <li>Phasellus nec ante eget felis </li>
                      <li>Morbi pellentesque tellus adipiscing </li>
                      <li>Nunc accumsan sagittis sem, ut </li>
                      <li>Nunc luctus eros eu enim gravida ut </li>
                      <li>Phasellus nec ante eget felis </li>
              </ul>
            
            </div>
            --%>
    
    </div> <!-- end of content -->
    
    <div class="cleaner"></div>

</div>
</body>
</html>