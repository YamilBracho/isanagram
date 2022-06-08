package main

import (
	"fmt"
	"strings"
)

func isAnagram(str string) bool {

	// Empty string
	if len(str) == 0 {
		return false
	}

	// Split string
	tokens := strings.Split(str, "=")
	if len(tokens) != 2 {
		return false
	}

	// tokens should be of the same length
	len0 := len(tokens[0])
	if len0 != len(tokens[1]) {
		return false
	}

	// Compare each character
	for _, rune0 := range tokens[0] {
		if (!strings.ContainsRune(tokens[1], rune0)) {
			return false
		}
	}

	return true
}

func main() {
	arr := []string{
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
	}

	for _, str := range arr {
		if isAnagram(str) {
			fmt.Println(str, "is an anagram")
		} else {
			fmt.Println(str, "is not an anagram")

		}
	}
}