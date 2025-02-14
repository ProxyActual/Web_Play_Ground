<!DOCTYPE html>
<html>
<body>

<h1>My first PHP page</h1>

<?php
$servername = "localhost";
$username = "root";
$password = "Root1234$";

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$data = "SELECT * FROM mysql.user";
$result = $conn->query($data);
if ($result->num_rows > 0) {
    // Output data of each row
    while($row = $result->fetch_assoc()) {
        echo "User: " . $row["User"] . " - Host: " . $row["Host"] . "<br>";
    }
} else {
    echo "0 results";
}

echo "Connected successfully";
?>

</body>
</html>