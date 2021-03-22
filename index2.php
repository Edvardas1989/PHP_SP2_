<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SP2</title>
    <link rel="stylesheet" href="./css/border">
    <link rel="stylesheet" href="./css/prevnext">
</head>
<body>
    
<?php

require_once './db_connect_projektai.php';

echo "<table style='border: solid 1px black;'>";


class TableRows extends RecursiveIteratorIterator {
  function __construct($it) {
    parent::__construct($it, self::LEAVES_ONLY);
  }

  function current() {
    return "<td>" . parent::current(). "</td>";
  }

  function beginChildren() {
    echo "<tr>";
  }

  function endChildren() {
    echo "</tr>" . "\n";
  }
}

?>

<br>
<br>

<a href="./index.php" class="previous">&laquo; Darbuotojai</a>

</body>
</html>