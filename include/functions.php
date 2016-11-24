<?php

function NSA_getdatetime() {
	date_default_timezone_set('Europe/London'); //ok, it's not zulu time, but it doesn't really exist for PHP...
	//v1:
	$date_utc = new \DateTime(null, new \DateTimeZone("UTC"));
	return $date_utc->format("Y/m/d H:i:s");
	//v2:
	//return gmdate("Y/m/d H:i:s");
}

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
function NSA_shortPaswd() {
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

function NSA_lipsum($amount=32, $what='bytes', $start=0) {
	//amount: 1-n //what: bytes,words,paras,lists //start: 0=Start normally; 1=Start with "Lorem ipsum sit amet..."
	return simplexml_load_file("http://www.lipsum.com/feed/xml?amount=$amount&what=$what&start=$start")->lipsum;
}
?>