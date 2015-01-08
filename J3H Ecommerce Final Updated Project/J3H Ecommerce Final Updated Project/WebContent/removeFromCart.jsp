<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*"
import = "java.lang.*" %>
<%@include file="MySQLConnection.jsp" %>

<%

int userid=1; 

int ordNum=1;

session = request.getSession(true);
String user = (String)session.getAttribute("userid");

ResultSet rs;
rs = st.executeQuery("select user_id from user where user_name ='"+user+"' ");
while(rs.next()){		userid = rs.getInt("user_id");		}


ResultSet rs1;
rs1= st.executeQuery("select ordernum from login where userid='"+userid+"'");

while(rs1.next()){ ordNum=rs1.getInt("ordernum"); 	}

String select[] = request.getParameterValues("removefromcart");
if (select != null && select.length != 0) {
	for (int i = 0; i < select.length; i++) {
		System.out.println("inside of if to table statement" + Integer.parseInt(select[i]));
	 st1 = con.prepareStatement("delete from orders where order_id = ? and prod_id = ?");
	 st1.setInt(1, ordNum);
	 st1.setInt(2, Integer.parseInt(select[i]));
	 st1.executeUpdate();
}
}
	response.sendRedirect("Checkout.jsp");
	//<jsp:forward page="Categories.jsp"/>
%>

