import java.util.Scanner;

class SumOfFirstN {

    static int sumOfFirstN(int n) {
        if (n == 1) {
            return 1;
        }
        return n + sumOfFirstN(n-1);
    }
    public static void main(String args[]) {
        System.out.print("Enter the limit: ");
        Scanner input = new Scanner(System.in);
        int number = input.nextInt();
        System.out.print("Sum of first "+ number + " number is " + sumOfFirstN(number));
        input.close();
    }
}