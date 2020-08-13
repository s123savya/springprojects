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
<style>
.intro{
	background-color:midnightblue;
    text-align:right;
    padding:10px 10px 10px 0px;
}
#myinput{
    padding: 5px 40px 5px 40px;
   font-size: 16px;
}
</style>
<title>Blog-showblogs</title>
</head>
<body>
<div class="intro">
<a class="hcp" href="\pages\home.jsp"  style="font-size:25px;color:white;text-decoration:none;">home|</a>
<a class="hcp" href="\pages\contact.jsp" style="font-size:25px;color:white;text-decoration:none;">contact|</a>
<a  class="hcp" href="\pages\blog.jsp"  style="font-size:25px;color:white;text-decoration:none;" target="_blank">blog</a>
</div><br>

<%

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
<h2 align="center"><font><strong>Data from database</strong></font></h2>
<form align="center" style="padding: 0px 0px 0px 0px;">
<input type="search" id="myinput" onkeyup="myFunction()" placeholder="search for a blog's name">
</form><br><br>
<table id="mytable" align="center" cellpadding="5" cellspacing="5" border="1" style="text-align:center;width:400px;height:250px;">

<tr>
<th style="background:midnightblue; color:white; font-size:30px"><b>bno</b></th>
<th style="background:midnightblue; color:white; font-size:30px"><b>bname</b></th>
<th style="background:midnightblue; color:white; font-size:30px"><b>open</b></th>
<th style="background:midnightblue; color:white; font-size:30px"><b>edit</b></th>


</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM blogdetails";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white" style="border:none; font-size:30px; color:midnightblue;">

<td ><%=resultSet.getInt("bno") %></td>
<td><%=resultSet.getString("bname") %></td>
<td>
    
<a style="color:midnightblue;" href="/pages/viewblog.jsp?bno=<%=resultSet.getInt("bno")%>">open</a>
</td>
<td>
<a style="color:midnightblue;" href="/pages/update.jsp?bno=<%=resultSet.getInt("bno")%>">edit</a>

</td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<script>
function myFunction() {
  // Declare variables
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myinput");
  filter = input.value.toUpperCase();
  table = document.getElementById("mytable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
</script>
</body>
</html>
