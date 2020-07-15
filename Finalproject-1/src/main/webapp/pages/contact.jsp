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
	background-color:white;
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
background-color:white;
	text-align:center;
}
#epi {
	border:none;
    background-color: white;
}
p {
  padding:10px 10px 10px 10px;
  font-family: verdana;
  font-size: 20px;
}
</style>
<title>Savya Singh-Contact</title>
</head>
<body>
<div class="intro">
<a class="hcp" href="\pages\home.jsp"  style="font-size:25px;color:white;text-decoration:none;">home|</a>
<a class="hcp" href="\pages\contact.jsp" style="font-size:25px;color:white;text-decoration:none;">contact|</a>
<a  class="hcp" href="\pages\blog.jsp"  style="font-size:25px;color:white;text-decoration:none;" target="_blank">blog</a>
</div><br>
<table>
    <tr>
    <td>
    <img src="\imagesused\savya.jpg" alt="NA" width=100px height=138px class="image" style="border:1px solid midnightblue;float:left;background-color:white"></td>
    <td>
    <h1 style="padding:0px;"><u>Contact</u></h1>
    <p><br><br>
Email:<a href="mailto:savya3456@outlook.com" style="text-decoration:none;color:blue;">@savyasingh</a><br><br>
LinkedIn:<a href="https://www.linkedin.com/in/savya-singh-b83407175/" style="text-decoration:none;color:blue">SavyaSingh</a>
    </p>
    </td></tr>
    <tr>
    <td>
    <p style="font-size:15px;text-align-center;">Savya Singh</p>
    </td>
    </tr>
    <tr>
	<td style="padding:0px 5px 0px 5px;background-color:white;border:1px solid midnightblue;" >
    	<ul style="padding-right:50px;list-style-type:none;">  
    	<button title="click here" onclick="openEducation()" id="epi"><li ><h2 style="color:darkslateblue;">Education</h2></li></button><br><br>
        <div id="Education" style="display:none">
        <h2>1.LNCT&S,Bhopal<br>2.Bright Day School(CBSE)</h2>
        </div>
        <button title="click here " onclick="openPll()" id="epi"><li><h2 style="color:darkslateblue;">Programming Languages</h2></li></button><br><br>
        <div id="Pll" style="display:none">
        <h2>1.C++<br>2.Java<br>3.HTML</h2>
        </div>
       <button tittle="click here" onclick="openInternships()" id="epi"> <li><h2 style="color:darkslateblue;">Internships</h2></li></button><br>
        <div id="Internships" style="display:none">
        <h2>1.Lock The Deal:Agile<br></h2>
        </div>
     </ul></td>
	</tr>
   </table>
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
<p style="font-size:15px;text-align:center;"><br><br> Copyright © 2020 Savya Singh.  All rights reserved.</p>
</body>
</html>