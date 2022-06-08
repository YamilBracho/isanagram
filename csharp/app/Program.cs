using System;

namespace Anagram
{
    internal class Program
    {
        public static bool isAnagram(string str)
        {
            // Empty string
            if (str.Length == 0) 
            {
                return false;
            }

            string[] tokens = str.Split('=');
            if (tokens.Length != 2)
            {
                return false;
            }

            int len0 = tokens[0].Length;
            if (len0 != tokens[1].Length)
            {
                return false;
            }

            foreach (char ch1 in tokens[0])
            {
                 if (!tokens[1].Contains(ch1))
                {
                   return false;
                }
            }

            return true;
        }

        public static void Main(string[] args)
        {
            string[] arr = new string[] {
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
           };

            foreach (string str in arr)
            {
                if (isAnagram(str))
                {
                    Console.WriteLine(str + " is an Anagram.");
                }
                else
                {
                    Console.WriteLine(str + " is not an Anagram.");
                }
            }
        }
    }
}
     