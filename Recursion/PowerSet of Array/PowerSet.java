import java.util.Scanner;
import java.util.ArrayList;
import java.util.Collections;

class PowerSet {

    static void subsetHelper(int i, ArrayList<Integer> subset, ArrayList<Integer> nums, ArrayList<ArrayList<Integer>> ans) {
    
        if(nums.size() == i){
            ans.add(new ArrayList<>(subset));
            return;
        }
    
        subset.add(nums.get(i));
        subsetHelper(i+1, subset, nums, ans);
        subset.remove(subset.size() - 1);
        subsetHelper(i+1, subset, nums, ans);
        return;
    }
   
    static ArrayList<ArrayList<Integer>> powerSet(ArrayList<Integer> nums){
        ArrayList<ArrayList<Integer>> ans  = new ArrayList<>();
        ArrayList<Integer> subset = new ArrayList<Integer>();
        subsetHelper(0, subset, nums, ans);
        return ans;
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
        ArrayList<ArrayList<Integer>> powerset;
        System.out.print("Enter number of elements in power set: ");
        Scanner input = new Scanner(System.in);
        ArrayList<Integer> arr = new ArrayList<Integer>();
        int number = input.nextInt();
        for(int i=0; i<number; i++) {
            System.out.println("Enter number "+ (i+1) +" : ");
            int value = input.nextInt();
            arr.add(value);
        }
        System.out.print("Array elements: ");
        arrayElements(arr);
        System.out.print("Power set: \n");
        powerset = powerSet(arr);
        for(int i=0; i<powerset.size(); i++) {
            arrayElements(powerset.get(i));
        }
        input.close();
    }
}