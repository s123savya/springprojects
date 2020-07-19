<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="blog.jsp" rel="import" />

<title>Blog-Add a blog</title>
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
<a  class="hcp" href="\pages\blog.jsp"  style="font-size:25px;color:white;text-decoration:none;">blog</a>
</div><br>

<h1>Add a new blog</h1>
<h2 style="text-align:center">Fill the below details for adding a new blog:</h2>
<form method="post" action="added" style="text-align:center" id="form">
<label>Blog's Title</label>&emsp;
<input type="text" name="bname"><br><br>
<p style="text-align:center;">Blog's Content(max:1000 words)</p>&emsp;&ensp;&ensp;&ensp;
<textarea type="text" name="bfile" form="form" style="text-align:center;width:700px;height:300px;" >
</textarea><br><br>
<input type="submit" value="submit">
</form>

<br><br>
<footer style="font-size:15px;text-align:center;"><br><br><br><br><br> Copyright © 2020 Savya Singh.  All rights reserved.</footer>

</body>
</html>
    