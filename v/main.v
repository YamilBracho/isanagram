fn is_anagram(str string) bool {

	// Empty string
	if str.len == 0 {
		return false
	}

	// Split string
	tokens := str.split('=')
	if tokens.len != 2 {
		return false
	}

	// tokens should be of the same length
	if tokens[0].len != tokens[1].len {
		return false
	}

	for c in tokens[0] {
		if !(tokens[1].contains(c.ascii_str())) {
			return false
		}
	}

	return true
}

fn main() {
		arr := [
		'123=320',
		'dog=god',
		'cat=tac',
		'pool=loop',
		'cool=loco',
		'jira=raji',
		'bees=bese',
		'kilo=loki',
		'',
		' = ',
		'asfgfasgasfsagdf==',
		'01234567890123456789012345678901234567890=09876543210987654321098765432109876543210',
		'abc=bca'
	]

	for str in arr  {
		if is_anagram(str) {
			println('$str is an anagram')
		} else {
			println('$str is not an anagram')

		}
	}
}
