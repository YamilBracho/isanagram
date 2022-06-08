#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define TRUE 1
#define FALSE 0

int is_anagram(char *str) {

    // Empty string
	if (strlen(str) == 0) {
		return FALSE;
	}
	
	// Copy string to make it local
	char *st = (char *) malloc(strlen(str));
	strcpy(st, str);

	// Split string
	char *token0 = strtok(st, "=");
	if (token0 == NULL) {
	    return FALSE;
	}
	
    char *token1 = strtok(NULL, "=");
    if (token1 == NULL) {
        return FALSE;
    }

    // tokens should be of the same length
    int len0 = strlen(token0); 
    if (len0 != strlen(token1)) {
        return FALSE;
    }    
    
    // Compare each character
    for (int i = 0; i < len0; i++) {
        char *ptr = strchr( token1, token0[i] );
        if (ptr == NULL) {
            return FALSE;
        }
    }
    
    return TRUE;
}

int main()
{
    char arr[][255] = {
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
        "abc=bca"};

    for (int i = 0; i < sizeof(arr) / 255; i++) {
        if (is_anagram(arr[i])) {
            printf("%s is an anagram.\n", arr[i]);
        } else{
            printf("%s is not an anagram.\n", arr[i]);
        }
    }

    return 0;
}