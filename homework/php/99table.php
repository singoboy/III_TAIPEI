<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
<title>ch04/for01.php</title>
</head>
<body>
	<table border="1">
<?php
for($i = 1; $i <= 9; $i = $i + 1) {
	if ($i % 2 == 0) {
		echo "<tr style='background-color:blue;'>";
	} else {
		echo "<tr style='background-color:green;'>";
	}
	
	for($j = 1; $j <= 9; $j = $j + 1) {
		echo "<td> $i * $j = ";
		echo $i * $j;
		echo "</td>";
	}
	echo "</tr>";
}
?>
</table>

</body>
</html>