fn main() {
    let arr = [
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
    ];

    for str in arr.iter() {
        if is_anagram(str.to_string()) {
            println!("{} is an anagram.", str);
        } else {
            println!("{} is not an anagram.", str);
        }
    }
}

fn is_anagram(str: String) -> bool {
    // Empty string
    if str.chars().count() == 0 {
        return false;
    }

    // Split string
    let split = str.split("=");
    let tokens: Vec<&str> = split.collect();
    if tokens.len() != 2 {
        return false;
    }

    // tokens should be of the same length
    let token0: Vec<char> = tokens[0].chars().collect();
    if token0.len() != tokens[1].chars().count() {
        return false;
    }

    // Compare each character
    for c in token0 {
        if !tokens[1].contains(c) {
            return false;
        }
    }

    return true;
}
