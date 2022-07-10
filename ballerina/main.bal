import ballerina/io;
import ballerina/regex;

public function is_anagram(string str) returns boolean {
    // Empty string
	if str.length() == 0 {
		return false;
	}

    // Split string
    string[] tokens = regex:split(str, "=");
    //io:println(tokens);

    // There should be 2 tokens
    if tokens.length() != 2 {
		return false;
	}

    // tokens should be of the same length
	if tokens[0].length() != tokens[1].length() {
		return false;
	}

    // Search eachs character in on etoken to be in the other
    //io:println(tokens[0]);
    foreach string c in tokens[0] {
		if tokens[1].indexOf(c) == -1 {
			return false;
		}
	}

   return true;
}   

public function main() {
     string[] arr = [
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
     ];

    foreach string str in arr {
       if is_anagram(str) {
           io:println(str + " is an anagram.");
       } else {
           io:println(str + " is not an anagram.");
       }    
    }
}