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

$sql = "SELECT id, projekto_pavadinimas, priskirtas_darbuotojas, darbuotojo_id, update_date FROM projektai";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  echo "<table><tr><th>id</th><th>projekto_pavadinimas</th><th>priskirtas_darbuotojas</th><th>darbuotojo_id</th><th>update_date</th></tr>";
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "<tr><td>".$row["id"]."</td><td>".$row["projekto_pavadinimas"]."</td><td>".$row["priskirtas_darbuotojas"]."</td><td>".$row["darbuotojo_id"]."</td><td>".$row["update_date"]."</td></tr>";
  }
  
  echo "</table>";
} else {
  echo "0 results";
}
$conn->close();

?>

