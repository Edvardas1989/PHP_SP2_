<?php

$servername = "localhost";
$username = "root";
$password = "mysql";
$dbname = "sp2";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT id, vardas, pavarde, projektas, update_date FROM darbuotojai";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  echo "<table><tr><th>id</th><th>vardas</th><th>pavarde</th><th>projektas</th><th>update_date</th></tr>";
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "<tr><td>".$row["id"]."</td><td>".$row["vardas"]."</td><td>".$row["pavarde"]."</td><td>".$row["projektas"]."</td><td>".$row["update_date"]."</td></tr>";
  }
  
  echo "</table>";
} else {
  echo "0 results";
}
$conn->close();

?>