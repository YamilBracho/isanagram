function isAnagram(str) {

    // Empty string
    if (str.length === 0) {
      return false;
    }
  
    // Split string
    const tokens = str.split("=");
    if (tokens.length !== 2) {
        return false;
    }
  
    // tokens should be of the same length
    const len0 = tokens[0].length;
    if (len0 !== tokens[1].length) {
        return false;
    }
  
    // Compare each character
    for(var i=0; i < len0; i++) {
        const ch = tokens[0][i];
        if (tokens[1].indexOf(ch) === -1) {
            return false;
        }
    }
    
    return true;
  }
  
  const arr = [
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
      
  arr.forEach(str => {
    if (isAnagram(str)) {
        console.log(str + " is an anagram")
    } else {
        console.log(str + " is not an anagram")
    }
  });