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
<title>Blog upadted</title>
<style>
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
</div><br>
<%
String bno = request.getParameter("bno");
String bname = request.getParameter("bname");
String bfile = request.getParameter("bfile");
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
PreparedStatement ps = null;
int blogid = Integer.parseInt(bno);
%>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
String sql ="UPDATE BLOGDETAILS SET bno=?, BNAME=?, BFILE=? where bno="+bno;
ps = connection.prepareStatement(sql);
ps.setInt(1,blogid);
ps.setString(2,bname);
ps.setString(3,bfile);
ps.executeUpdate();
}
catch (Exception e) {
e.printStackTrace();
}

%>
<%


Connection connect = null;
Statement state = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Data from database</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1" style="width:400px;height:250px;">

<tr>
<th style="background:midnightblue; color:white; font-size:30px"><b>bno</b></th>
<th style="background:midnightblue; color:white; font-size:30px"><b>bname</b></th>
<th style="background:midnightblue; color:white; font-size:30px"><b>bfile</b></th>

</tr>
<%
try{ 
connect = DriverManager.getConnection(connectionUrl+dbName, userId, password);
state=connect.createStatement();
String sl ="SELECT * FROM blogdetails";
resultSet = state.executeQuery(sl);
while(resultSet.next()){
%>
<tr bgcolor="white" style="border:none; font-size:30px; color:midnightblue;">

<td ><%=resultSet.getInt("bno") %></td>
<td><%=resultSet.getString("bname") %></td>
<td>
    <%=resultSet.getString("bfile") %>
</td>
</tr>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 

</body>
</html>