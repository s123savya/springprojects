<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*" %>

<%ResultSet resultset =null;%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blog-showblog-open</title>
<style>
textarea {
display:block;
	margin-left:auto;
    margin-right:auto;
	border :2px solid midnightblue;
	
}
.intro{
	background-color:midnightblue;
    text-align:right;
padding:10px 10px 10px 0px;
}
</style>
</head>
<body>
<div class="intro">
<a class="hcp" href="\pages\home.jsp"  style="font-size:25px;color:white;text-decoration:none;">home|</a>
<a class="hcp" href="\pages\contact.jsp" style="font-size:25px;color:white;text-decoration:none;">contact|</a>
<a  class="hcp" href="\pages\blog.jsp"  style="font-size:25px;color:white;text-decoration:none;" target="_blank">blog</a>
</div><br><br>
<h1 style="text-align:center">Content of the Blog:</h1><br><br>
<%
String bno = request.getParameter("bno");
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "savya";
String userId = "blogdetails";
String password = "blogdetails";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM blogdetails where bno="+bno;
resultSet = statement.executeQuery(sql);
while(resultSet.next()) {
%>
<textarea  type="text" style="width:700px;height:300px;font-size:20px;" name="bfile" ><%=resultSet.getString("bfile") %></textarea>
<%
}
}
catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>