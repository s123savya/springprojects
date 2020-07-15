<?php
$servername = "localhost";
$username = "blogdetails";
$password = "blogdetails";
$dbname = "savya";

echo "hi. i am savya!";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT bno, bname, bfile FROM Blogdetails;";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "Bno ". $row["bno"]. "\tBname ". $row["bname"]. "\t Bfile" . $row["bfile"] . "\n";
    }
        
} else {
    echo "0 results";
}

$conn->close();
?>