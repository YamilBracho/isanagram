<?php 

$arr = array(
        "123=320",
		"dog=god",
		"cat=tac",
		"pool=loop",
		"cool=loco",
		"jira=raji",
		"bees=bese",
		"kilo=loki",
		"",
		" = ",
		"asfgfasgasfsagdf==",
		"01234567890123456789012345678901234567890=09876543210987654321098765432109876543210",
		"abc=bca",
);

foreach ($arr as $str) {
    if (isAnagram($str)) {
      echo "$str is an anagram.\n";
    } else {
      echo "$str is not an anagram.\n";
   }
}


function isAnagram($str) {

  // Empty string
  if (strlen($str) == 0) {
   	return FALSE;
  }

  // Split string
  $tokens = explode("=",$str);
  if (count($tokens) != 2) {
	 return FALSE;
   }

 // tokens should be of the same length
 $len0 = strlen($tokens[0]);
 if ($len0 != strlen($tokens[1])) {
	return FALSE;
 }

  // Compare each character
  for ($i = 0; $i < strlen($tokens[0]); $i++) {
    $ch = $tokens[0][$i];
    if (strpos($tokens[1], $ch) === FALSE) {
		   return FALSE;
	}
  }

  return TRUE;
}