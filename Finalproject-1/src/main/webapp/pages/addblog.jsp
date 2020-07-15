<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="blog.jsp" rel="import" />

<title>Savya Singh</title>
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
<!-- <table style="border:1px solid midnightblue;padding:0px 40px 10x 0px;margin-left:auto;margin-right:auto;" id="mytable">
<th>Blog No.</th>
<th>Blog Title</th>
<th>Options</th>
<tr>
<td><p>1</p></td>
<td>
<p>Doctors don't want robots to leave them after the Pandemic &emsp; </p>
</td>
<td>
&emsp;
<a href="#" class="open">open</a>
<br><br>
</td>
</tr>
<tr>
<td><p>2</p></td>
<td>
<p>Green Cloud Computing &emsp;</ps>
</td>
<td>
&emsp;
<a href="C:\Users\Admin\Desktop\greencomputing.txt" class="open">open</a>
<br><br>
</td></tr>
</table>-->
<h1>Add a new blog</h1>
<h2 style="text-align:center">Fill the below details for adding a new blog:</h2>
<form method="post" action="added" style="text-align:center">
<label>Blog's Title</label>&emsp;
<input type="text" name="bname"><br><br>
<label>Blog's Content</label>&emsp;&ensp;&ensp;
<input type="text" name="bfile"><br><br>
<input type="submit" value="submit">

</form>
<footer style="font-size:15px;text-align:center;"><br><br><br><br><br> Copyright © 2020 Savya Singh.  All rights reserved.</footer>
<!--<script>
function addingBlog() {
	var input=document.getElementById("blogtitle");
    var table=document.getElementById("mytable");
    var b=table.getElementsByTagName("tr");
    var z=b.length;
	 var row = table.insertRow();
  var cell1 = row.insertCell(0);
  var cell2 = row.insertCell(1);
    var cell3 = row.insertCell(2);
  cell1.innerHTML = z;
  cell2.innerHTML = input.value;
}
</script>-->
</body>
</html>
    