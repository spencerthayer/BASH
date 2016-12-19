<?php
	echo "<table>";
	for ($i = 0; $i < 31; $i++) {
		$firstHour = random_int(07,20);
			$firstMinute = random_int(01,59);
			$firstSecond = random_int(01,59);
		$secondHour = $firstHour+random_int(01,6);
			$secondMinute = random_int(01,59);
			$secondSecond = random_int(01,59);
		echo "<tr><td style=\"padding:10px;\">".$firstHour.":".$firstMinute.":".$firstSecond."</td>";
		echo "<td>".$secondHour.":".$secondMinute.":".$secondSecond."</td></tr>";
	}
	echo "</table>";
?>
