<?php
	$treeSize = 4;
	$treeLine = ($treeSize + 2) * 2;
	$pillarSize = $treeSize + 2;
	$treeLine += ($treeLine - 1);
	
	for ($triangleIndex = 0; $triangleIndex < $treeSize; $triangleIndex++) {
		for ($inLine = 0; $inLine < $triangleIndex + 4; $inLine++) {
			for ($row = 0; $row < $treeLine; $row++) {
				if (floor($treeLine / 2) - ($inLine + 1) - ($triangleIndex + 1) < $row
					&& $row < floor($treeLine / 2) + ($inLine + 1) + ($triangleIndex + 1)) {
					if (($row + $inLine) % 2 == 1) {
						$randomChar = rand(1,41);
						if($randomChar < 35){
							echo "*";
						}else if($randomChar < 37){
							echo "O";
						}else if($randomChar < 39){
							echo "o";
						}else{
							echo "@";
						}
					}
					else {
						echo " ";
					}
				}else{
					echo " ";
				}
			}
			echo "\n";
		}
	}

	for ($pillarLine = 0; $pillarLine < $pillarSize; $pillarLine++) {
		for ($rowIndex = 0; $rowIndex < $treeLine; $rowIndex++) {
			if ($treeLine / 2 < $rowIndex + $pillarSize / 2
				&& $treeLine / 2> $rowIndex - ($pillarSize + 1) / 2) {
				echo '#';
			}
			else {
				echo ' ';
			}
		}
		echo "\n";
	}
?>