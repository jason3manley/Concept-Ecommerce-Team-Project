<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*"
import = "java.lang.*" %>
<%@include file="MySQLConnection.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete User</title>
</head>
<body>
<%
//If the Update button is clicked in the user profile page, then update the user info if with any changes.
if(null != request.getParameter("Submit"))
{
	
String id = request.getParameter("user_id");
String fname = request.getParameter("FName");
String lname = request.getParameter("LName");
String Uname = request.getParameter("user_name");
String pw = request.getParameter("password");
String email = request.getParameter("email");

st1 = con.prepareStatement("delete from user where user_id='"+id+"' ");





/* PreparedStatement st = con.prepareStatement("update user set FName = '"+fname+
											"',LName = '"+lname+
											"',user_name = '"+Uname+
											"',password = '"+pw+
											"',email = '"+email+
											"'where  user_name = '"+Uname+"'");

 */




int i = st1.executeUpdate();

if (i > 0) 
{
/* response.sendRedirect("Admin_Control_Panel.jsp"); */

%>

<jsp:forward page="Deleted _User_Info.jsp"> <jsp:param name="DeleteUser" value="User Deleted Successfully!!</font>"/> </jsp:forward> 
<%
}

}
%>
</body>
</html>