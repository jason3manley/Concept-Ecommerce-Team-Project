<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="MySQLConnection.jsp" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page import ="java.sql.*" %>
<style>  
     <%@ include file="JScript.js"%>  
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
<script>
  function validateForm()
  { 

    if(document.form1.username.value=="")
    { 
      alert("User Name should not be blank.."); 
      document.frm.username.focus(); 
      return false; 
    }
     else if(document.frm.pwd.value=="")
    {
      alert("Password should not be blank"); 
      document.frm.pwd.focus(); return false; 
    }

   } 

     </script>
</head>
<body>
<%
    String userid = request.getParameter("Username");    
    String pwd = request.getParameter("Password");
   
    ResultSet rs;
    rs = st.executeQuery("select * from Admin where Username='" + userid + "' and Password='" + pwd + "'");
   
    if (rs.next()) 
    {
        session.setAttribute("userid", userid);
        response.sendRedirect("Admin_Control_Panel.jsp");
        //response.sendRedirect("Product_Categories.jsp");
        
    } 
    else 
    {
    	//response.sendRedirect("Admin_Login.jsp");
    	//out.print("<h1><font color = 'red'>Administrator Username or Password is Invalid, Please try again!!</font></h>");
        		
        %>

        <jsp:forward page="Admin_Login.jsp"> <jsp:param name="FailedLogin" value="Administrator Username or Password is Invalid, please try again!!</font>"/> </jsp:forward> 
        <%
    }
%>
</body>
</html>