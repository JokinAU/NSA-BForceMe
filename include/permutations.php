<?php
//Given an array, return all the non repetitive permutations
function permute($array) {
	$length = sizeof($array);
	$inner = function($ix = []) use ($array, $length, &$inner) {
		$yield = sizeof($ix) == $length - 1;
		for ($i = 0; $i < $length; $i++):
			if (in_array($i, $ix)):
				continue;
			elseif ($yield):
				$toYield = [];
				foreach (array_merge($ix, [$i]) as $index)
					$toYield[] = $array[$index];
				yield $toYield;
			else:
				foreach ($inner(array_merge($ix, [$i])) as $permute)
					yield $permute;
			endif;
		endfor;
	};
	return $inner();
}

//Return a string containin one char from each category
function shortPaswd() {
	//Define the 4 different charsets in a single two dimmensional array
	$charset = array(range('A', 'Z'), range('a', 'z'), range ('0', '9'), array('*', '/', '+', '-'));

	//Obtain all the non repetitive permutations for all the charsets
	foreach (permute(range(0, count($charset)-1)) as $perm)
		$permutations[] = $perm;
	//Get one random item from those permutatios
	$mypick = $permutations[rand(0, count($permutations)-1)];

	//Loop through each charset and choose a random item from each of them
	for ($i = 0; $i < count($charset); $i++)
		$finalkey[] = $charset[$mypick[$i]][rand(0, count($charset[$mypick[$i]])-1)];
	return implode($finalkey);
}
//sample usage:
//echo shortPaswd();
?>
