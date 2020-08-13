<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blog-Delete blog</title>
<style>
div {
 text-align:center;
}
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
<a class="hcp" href="\pages\contact.jsp" style="font-size:25px;color:white;text-decoration:none;">contact|</a>
<a  class="hcp" href="\pages\blog.jsp"  style="font-size:25px;color:white;text-decoration:none;" target="_self">blog</a>
</div><br>
<h1>Deleting a blog</h1><br><br>
<h2 style="text-align:center;">Blog's NUMBER to be deleted:</h2><br>
<div>
<form method="post" action="deleted" >
<input type="text" name="bno"><br><br>
<input type="submit" value="submit">
</form>
</div>
<footer style="font-size:15px;text-align:center;"><br><br><br><br><br> Copyright © 2020 Savya Singh.  All rights reserved.</footer>
</body>
</html>

