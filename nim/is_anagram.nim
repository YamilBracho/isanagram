import std/strformat
import strutils

proc is_anagram(str: string) : bool =
   
  # Empty string
  if len(str) == 0:
    return false
  
  # Split string
  var tokens = str.split({'='})
  if len(tokens) != 2:
    return false
  
  # tokens should be of the same length
  if len(tokens[0]) != len(tokens[1]):
    return false
  
  for c in tokens[0]:
    if not tokens[1].contains(c):
      return false
  
  return true

# main
let arr:  array[13, string] = ["123=320",
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

for str in arr:
  #echo is_anagram(str) 
  if is_anagram(str):
    echo fmt"{str} is an anagram"
  else:
    echo fmt"{str} is not an anagram"
 
