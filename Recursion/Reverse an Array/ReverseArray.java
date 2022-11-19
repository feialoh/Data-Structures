import java.util.Scanner;
import java.util.ArrayList;
import java.util.Collections;

class ReverseArray {

    static ArrayList<Integer> reverse(int l, int r,ArrayList<Integer> arr){
        if (l > r) {
            return arr;
        }
        Collections.swap(arr, l, r);
        return reverse(l+1, r-1, arr);
    }

    static ArrayList<Integer> reverseArray(ArrayList<Integer> arr, int m) {
        return reverse(m, arr.size()-1, arr);
   }

   static void arrayElements(ArrayList<Integer> arr){
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
        System.out.print("Enter number of elements to be entered: ");
        Scanner input = new Scanner(System.in);
        ArrayList<Integer> arr = new ArrayList<Integer>();
        int number = input.nextInt();
        for(int i=0; i<number; i++) {
            System.out.println("Enter number "+ (i+1) +" : ");
            int value = input.nextInt();
            arr.add(value);
        }
        System.out.print("Array Before: ");
        arrayElements(arr);
        reverseArray(arr, 0);
        System.out.print("Array After: ");
        arrayElements(arr);
        input.close();
    }
}