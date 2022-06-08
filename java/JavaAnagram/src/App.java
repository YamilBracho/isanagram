
public class App {
    public static void main(String[] args) throws Exception {

        String[] arr = new String[] { "123=320",
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
        };

        for (String str : arr) {
            if (isAnagram(str)) {
                System.out.println(str + " is an anagram");
            } else {
                System.out.println(str + " is not an anagram");
            }
        }
    }

    public static boolean isAnagram(String str) {

        // Empty string
        if (str.length() == 0) {
            return false;
        }
    
        // Split string 
        String[] tokens = str.split("=");
        if (tokens.length != 2) { 
            return false;
        }
    
        // tokens should be of the same length
        int len0 = tokens[0].length();
        if (len0 != tokens[1].length()) {
            return false;
        }

        // Compare each character
        for (int i = 0; i < len0; i++) {
            char ch0 =  tokens[0].charAt(i);  
            if  ( tokens[1].indexOf(ch0) == -1) {
                return false;
            }
        }

        return true;
    }
}
