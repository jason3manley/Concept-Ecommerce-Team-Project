<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="MySQLConnection.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- We are using html5 -->
<!-- <!DOCTYPE html> -->
<html>
<head>

<style>  
     <%@ include file="JScript.js"%>  
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User_Info</title>
<link href="web.css" rel="stylesheet" type="text/css" />
<center>

 
    <!-- This is the  page banner. -->
<img src="J3Hbanner.png" align="middle" align="top" width="1200" height="220" />



<!-- This is the  page navigation2. -->
<center>
<div id="nav">
<a href="Index.jsp">Home</a> |<a href="Categories.jsp">Product Categories</a> | <a href="User.jsp">Edit Profile</a> | <a href="Logout.jsp">Logout</a> | <a href="Admin_Login.jsp">Admin Login</a> 
</div></center>
    
</head>
<body>

<div class="updateproductpage" style="color:red;" align="center" >
<p style="color:blue; align=right"><u>Search For a User</u></p><br />


<div id = "UserUpdated" style="color:yellow;">
   <%
   		if(request.getParameter("UserUpdated") != null)
   		{
	       %>
   		      <%=request.getParameter("UserUpdated") %>
           <% 
        }
   %>
   </div><br />

<%
   
   String id = request.getParameter("user_id");
   String fname = request.getParameter("password");
   String lname = request.getParameter("password");
   String uname = request.getParameter("password");
   String pwd = request.getParameter("password");
   String email = request.getParameter("password");
   
   ResultSet rs;
   rs = st.executeQuery("select * from user where user_id='"+id+"' ");
	
   out.print("<form action='Update_User.jsp'  method='post' >");
   out.print("<form action='DeleteUser.jsp'  method='post' >");
   
   
  
    while(rs.next())
	{	    	
    	out.println("<td>" +"User ID: " + "<input name='user_id'  value='" +rs.getInt(1)+ "' /><br/><br>");
    	out.println("<td>" +"First Name: " + "<input name='FName'  value='" +rs.getString(2)+ "' /><br/><br>");
    	out.println("Last Name: " + "<input type='text' name='LName' value='" +rs.getString(3)+ "' /><br/><br>");
    	out.println("User Name: " + "<input type='text' name='user_name' value='" +rs.getString(4)+ "' /><br/><br>");
    	out.println("Password: " + " <input type='text' name='password' value='" +rs.getString(5)+ "' /><br/><br>");
    	out.println("Email: " +    " <input type='text' name='email' value='" +rs.getString(6)+ "' /><br/><br/>");	
	}
    
%>
   <!-- <form name="form1" action="User.jsp"  method="post" onSubmit="Update"></p> -->
    <input type="Submit" value="Update" name="Submit">
    <!-- <input type="Submit" value="Delete" name="Submit"> -->
   
   
   </form> 
</div>
</div>
<!-- </div> -->   
       
</body>
</html>