<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Savya Singh-Blog</title>
<style>
.intro{
	background-color:midnightblue;
    text-align:right;
padding:10px 10px 10px 0px;
}
h1 {
	color:midnightblue;
    text-align:center
}
</style>
</head>
<body>
<div class="intro">
<a class="hcp" href="\pages\home.jsp"  style="font-size:25px;color:white;text-decoration:none;">home|</a>
<a class="hcp" href="\pages\contact.jsp" style="font-size:25px;color:white;text-decoration:none;" >contact|</a>
<a  class="hcp" href="\pages\blog.jsp"  style="font-size:25px;color:white;text-decoration:none;" target="_self">blog</a>
</div><br>
<h1>Blog</h1>
<!--<div style="text-align:center;">
<label style="font-size:25px;">Search a blog:</label>
<input type="text" id="myinput" onkeyup="myFunction()" placeholder="Search for Blog title">
</div>-->
<br><br>
<form  method="post" action="/showblogs" style="text-align:center">
<input type="submit" name="Show all Blogs" value="Show all blogs">
</form>
<br><br>
<form  method="post" action="/add" style="text-align:center">
<input type="submit" name="Show all Blogs" value="Add blog">
</form><br><br>
<form  method="post" action="/delete" style="text-align:center">
<input type="submit" name="Show all Blogs" value="Delete a blog">
</form>
<!--<script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myinput");
  filter = input.value.toUpperCase();
  table = document.getElementById("mytable");
  tr = table.getElementsByTagName("tr");
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
</script>-->
<footer style="font-size:15px;text-align:center;"><br><br><br><br><br> Copyright © 2020 Savya Singh.  All rights reserved.</footer>
</body>
</html>
    