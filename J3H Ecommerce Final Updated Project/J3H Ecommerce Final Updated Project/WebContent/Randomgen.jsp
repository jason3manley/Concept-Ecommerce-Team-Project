<%@ page import ="java.sql.*"
import = "java.lang.*" %>
<%@page import="java.util.Random"%>
<%@include file="MySQLConnection.jsp" %>

<%
Random rand = new Random();
int randnum = rand.nextInt(90000) + 100000;

int userid=0; 

session = request.getSession(true);
String user = (String)session.getAttribute("userid");
Class.forName("com.mysql.jdbc.Driver");


ResultSet rs;
rs = st.executeQuery("select user_id from user where user_name ='"+user+"' ");
while(rs.next()){	userid = rs.getInt("user_id");	}
	

st1 = con.prepareStatement("insert into login values(?,?,now())");
st1.setInt(1, userid);
st1.setInt(2, randnum);

st1.executeUpdate();

response.sendRedirect("Categories.jsp");
%>