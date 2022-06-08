#include <iostream>
#include <string>
#include <regex>
#include <vector>
using namespace std;

bool is_anagram(string str)
{

    // Empty string
    if (str.length() == 0)
    {
        return false;
    }

    // Separate string into tokens using =
    regex reg("\\=");
    sregex_token_iterator iter(str.begin(), str.end(), reg, -1);
    sregex_token_iterator end;
    vector<string> tokens(iter, end);

    // tokens should be of the same length
    unsigned int len0 = tokens[0].length();
    unsigned int len1 = tokens[1].length();
    if (len0 != len1)
    {
        return false;
    }

    // Compare each character
    for (unsigned int i = 0; i < len0; i++)
    {
        char c = tokens[0][i];
        if (tokens[1].find(c) >= len1)
        {
            return false;
        }
    }

    return true;
}

int main()
{
    string arr[13] = {"123=320",
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

    for (int i = 0; i < 13; i++)
    {
        if (is_anagram(arr[i]))
        {
            cout << arr[i] << " is an anagram\n";
        }
        else
        {
            cout << arr[i] << " is not an anagram\n";
        }
    }
}
