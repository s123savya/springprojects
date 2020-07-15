<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
.smi {
	text-align:center;
}
td { border:none;
	background-color:midnightblue;
    padding:0px 50px 0px 50px ;
}
.intro{
	background-color:midnightblue;
    text-align:right;
padding:10px 10px 10px 0px;
}
.hcp a:hover {
	color:lightgreen;
}
body {
  background-color:white ;
}
.image {
    display:block;
	margin-left:auto;
    margin-right:auto;
	padding:10px;
}

h1 {
background-color:lightgreen;
	text-align:center;

}
button {
	border:none;
    background-color: white;
}
p {
  padding:10px 10px 10px 10px;
  font-family: verdana;
  font-size: 20px;
}
</style>
<title>Savya Singh</title>
</head>
<body>
<div class="intro">
<a class="hcp" href="\pages\home.jsp"  style="font-size:25px;color:white;text-decoration:none;">home|</a>
<a class="hcp" href="\pages\contact.jsp" style="font-size:25px;color:white;text-decoration:none;">contact|</a>
<a  class="hcp" href="\pages\blog.jsp"  style="font-size:25px;color:white;text-decoration:none;" target="_blank">blog</a>
</div><br>
<table>
    <tr>
	<td style="padding:0px 5px 0px 5px;background-color:white;border: 1px solid midnightblue" >
    	<ul style="padding-right:50px;list-style-type:none;">  
    	<button title="click here" onclick="openEducation()"><li ><h2 style="color:darkslateblue;">Education</h2></li></button><br><br>
        <div id="Education" style="display:none">
        <h2>1.LNCT&S,Bhopal<br>2.Bright Day School(CBSE)</h2>
        </div>
        <button title="click here " onclick="openPll()"><li><h2 style="color:darkslateblue;">Programming Languages</h2></li></button><br><br>
        <div id="Pll" style="display:none">
        <h2>1.C++<br>2.Java<br>3.HTML</h2>
        </div>
       <button tittle="click here" onclick="openInternships()"> <li><h2 style="color:darkslateblue;">Internships</h2></li></button><br>
        <div id="Internships" class="introo" style="display:none">
        <h2>1.Lock The Deal:Agile<br></h2>
        </div>
     </ul></td>
	<td style="float:right;margin-left:70px"><br>
	<img src="\imagesused\savya.jpg" alt="NA" width=200px height=275px class="image" style="border:1px solid white">
	<p style="text-align:center;color:white;font-size:18px;font-family: "Times New Roman",Times,serif";>Hi! My name is Savya Singh. I am a student at LNCTS ,Bhopal. 
	I have taken CS as my branch and am currently pursuing my BTech degree. I am from Vadodara,Gujarat. My Hobbies are Swimming,Badminton and Watching Dramas. My aim is to become a successful person. <br><br></p>
    
<p style="color:white;font-family:courier font-size:16px"><i>    You have brains in your head. You have feet in your shoes. You can steer yourself in any direction you choose.-Dr Seuss<i></p>
    </td></tr></table><br><br>
<div class="smi">
<a href="https://www.instagram.com/savya__singh/" ><img src="\imagesused\insta.jpg" width=50px height=50px title="instagram"></a>

<a href="https://twitter.com/SavyaSingh000" ><img src="\imagesused\twitter.jpg" width=50px height=50px title="twitter"></a>
<a href="https://www.facebook.com/savya.singh.142/" ><img src="\imagesused\facebook.jpg" width=38px height=38px title="facebook"></a>
<a href="https://github.com/savyasingh23" ><img src="\imagesused\github.jpg" width=60px height=44px title="github"></a>
</div>
<script>
function openEducation() {
var x = document.getElementById("Education");
	if (x.style.display == "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }}
  function openPll() {
  var y = document.getElementById("Pll");
  if (y.style.display == "none") {
    y.style.display = "block";
  } else {
    y.style.display = "none";
  }}
  function openInternships() {
    var z = document.getElementById("Internships");

  if (z.style.display == "none") {
    z.style.display = "block";
  } else {
    z.style.display = "none";
  }
}
</script>
<marquee><footer><h3><i>The most powerful warriors are PATIENCE and TIME</i></h3></footer></marquee>
<p style="font-size:15px;text-align:center;"> Copyright © 2020 Savya Singh.  All rights reserved.</p>

</body>
</html>