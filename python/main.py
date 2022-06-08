#!/usr/bin/python3

def isAnagram(str):

    #Emty String
    if len(str) == 0:
        return False

	  # Split string
    tokens = str.split(sep="=")
    if len(tokens) != 2:
        return False

    # tokens should be of the same length    
    len0 = len(tokens[0])
    if len0 !=len(tokens[1]):
        return False

    # Compare each character
    for ch1 in tokens[0]:
        if not ch1 in tokens[1]:
            return False

    return True

def main():
    arr = ["123=320","dog=god","cat=tac","pool=loop","cool=loco","jira=raji","bees=bese","kilo=loki",""," = ","asfgfasgasfsagdf==","01234567890123456789012345678901234567890=09876543210987654321098765432109876543210","abc=bca"]

    for str in arr:
        if isAnagram(str):
            print(str + " is anagram")
        else:
            print(str + " is not anagram")

if __name__ == "__main__":
    main()
	