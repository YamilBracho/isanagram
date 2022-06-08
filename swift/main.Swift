import Foundation

func isAnagram(str: String) -> Bool {

    // Empty string
    if str.count == 0 {
        return false
    }

    // Split string   
	let tokens = str.components(separatedBy: "=")
	if tokens.count  != 2 {
		return false
	}

    // tokens should be of the same length
	let len0 = tokens[0].count
	if len0 != tokens[1].count {
		return false
	}

    // Compare each character
	for c in  tokens[0] {
        if (!tokens[1].contains(c)) {
			return false
		}
	}

	return true
}

let  arr = [
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
]

for str  in arr {
    if isAnagram(str:str) {
        print("\(str) is an anagram.")
    } else {
        print("\(str) is not an anagram.")
    }
}
