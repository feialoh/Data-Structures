import java.util.Scanner;

class Palindrome {

    static boolean isPalindromeHelper(int l, int r, String s) {
        if (l >= r) 
            return true;

        if (s.charAt(l) != s.charAt(r))
            return false;
        return isPalindromeHelper(l+1, r-1, s);
    }

    static boolean isPalindrome(String s) {
        String str = "";
        for(int i=0; i<s.length(); i++) {
            char c = s.charAt(i);
            if (Character.isLetter(c))
            str += Character.toLowerCase(c);
            if (Character.isDigit(c))
            str += c;
        }

        if (str.length() == 0)
        return true;

        return isPalindromeHelper(0, str.length()-1, str);
    }
    public static void main(String args[]){
        System.out.print("Enter the string: ");
        Scanner input = new Scanner(System.in);
        String testString = input.nextLine();
        if (isPalindrome(testString)) {
            System.out.print("Its palindrome");
        } else {
            System.out.print("Not a Palindrome");
        }
        input.close();
    }
}