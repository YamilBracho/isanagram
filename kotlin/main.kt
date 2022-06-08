fun isAnagram(str : String) : Boolean {

    // Empty string
	if (str.length == 0) {
		return false
	}

    // Split string 
	val tokens = str.split("=")
	if (tokens.size != 2){
		return false
	}

    // tokens should be of the same length
	val len0 = tokens[0].length;
	if (len0 != tokens[1].length) {
		return false
	}

    // Compare each character
	var count = 0
	for (ch0 in tokens[0]) {
        if (tokens[1].contains(ch0)) {
            count++
        }
	}

	return (count == len0);

}

fun main() {
    val arr = arrayOf(
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
		"abc=bca"
    )
	
    
	for(str in arr) {
		if (isAnagram(str)) {
			println(str + " is an anagram")
		} else {fun isAnagram(str : String) : Boolean {

    // Empty string
	if (str.length == 0) {
		return false
	}

    // Split string 
	val tokens = str.split("=")
	if (tokens.size != 2){
		return false
	}

    // tokens should be of the same length
	val len0 = tokens[0].length;
	if (len0 != tokens[1].length) {
		return false
	}

    // Compare each character
	for (ch0 in tokens[0]) {
        if (!tokens[1].contains(ch0)) {
            return false
        }
	}
	return true
}

fun main() {
    val arr = arrayOf(
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
		"abc=bca"
    )
	
    
	for(str in arr) {
		if (isAnagram(str)) {
			println(str + " is an anagram")
		} else {
			println(str + " is not an anagram")
		}
	}
}
			println(str + " is not an anagram")
		}
	}
}