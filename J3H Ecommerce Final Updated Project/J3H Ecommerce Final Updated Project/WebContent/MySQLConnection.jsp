<%@ page import ="java.sql.*"
import = "java.lang.*" %>

<%

Connection con = null;
Class.forName("com.mysql.jdbc.Driver");

con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce",
        "root", "root");

Statement st = con.createStatement();
PreparedStatement st1;
%>