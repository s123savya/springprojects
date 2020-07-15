<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
</body>
</html>
<?php
$servername = "localhost";
$username = "blogdetails";
$password = "blogdetails";
$dbname = "savya";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT id, firstname, lastname FROM MyGuests";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "BNO". $row["bno"]. "BNAME ". $row["bname"]. "BFILE" . $row["bfile"] . "<br>";
    }
echo "</table>;

} else {
    echo "0 results";
}

$conn->close();
?>


