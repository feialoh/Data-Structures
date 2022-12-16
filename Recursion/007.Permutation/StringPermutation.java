import java.util.Scanner;
import java.util.ArrayList;
import java.util.Collections;

class StringPermutation {

static ArrayList<String> permutation(String str) {
    ArrayList<String> ans = new ArrayList<String>();   
    helper(0, str, ans);
    Collections.sort(ans);
    return ans;
}

static void helper(int pos, String str, ArrayList<String> ans) {
    if (pos >= str.length()){
        ans.add(str);
    }
    ArrayList<Character> m = new ArrayList<Character>();  
    for (int i=pos; i<str.length(); i++){
        if (m.contains(str.charAt(i))) { continue ;}
        m.add(str.charAt(i));
        str = swap(str, i, pos);
        helper(pos+1, str, ans);
        str = swap(str, i, pos);
    }
}

static String swap(String str, int i, int j)
{
    char ch[] = str.toCharArray();
    char temp = ch[i];
    ch[i] = ch[j];
    ch[j] = temp;
    return new String(ch);
}

static void arrayElements(ArrayList<String> arr){
    int len = arr.size();
    System.out.print("{ ");
    for(int i = 0; i<len; i++) {
        System.out.print(arr.get(i));
        if(i!=len-1){
            System.out.print(", ");
            }
        }
        System.out.print(" }\n");
    }
public static void main(String args[]){
    // ArrayList<ArrayList<Character>> powerset;
    System.out.print("Enter the string: ");
    Scanner input = new Scanner(System.in);
    String testString = input.nextLine();
    arrayElements(permutation(testString));

    input.close();
}
}