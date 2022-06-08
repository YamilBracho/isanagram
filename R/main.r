is_anagram <- function(str) {

  # Empty string
  if (nchar(str) == 0) {
    return(FALSE)
  }

  # Split string
  tokens <- unlist(strsplit(str, split = "="))
  if (length(tokens) != 2) {
    return(FALSE)
  }

  # tokens should be of the same length
  len0 <- nchar(tokens[1])
  if (len0 != nchar(tokens[2])) {
    return(FALSE)
  }

  # Compare each character
  for (ch in strsplit(tokens[1], "")[[1]]) {
     if (grepl(ch, tokens[2], fixed = TRUE) == FALSE) {
       return (FALSE)
    }
  }

   return(TRUE)
}


arr <- c("123=320", 
    "dog=god", 
    "cat=tac", 
    "pool=loop", 
    "cool=loco",
    "jira=raji", 
    "bees=bese", 
    "kilo=loki", "", 
    " = ",
    "asfgfasgasfsagdf==", 
    "abc=bca",
    "01234567890123456789012345678901234567890=09876543210987654321098765432109876543210"
)

for (str in arr) {
  if (is_anagram(str)) {
    print(paste(str, "is an anagram."))
  } else {
    print(paste(str, "is not an anagram."))
  }
}
