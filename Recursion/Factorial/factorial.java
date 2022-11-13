import java.util.Scanner;

class Factorial {

    static int factorial(int n) {
        if (n == 0) {
            return 1;
        }
        return n * factorial(n-1);
    }
    public static void main(String args[]) {
        System.out.print("Enter a number: ");
        Scanner input = new Scanner(System.in);
        int number = input.nextInt();
        System.out.print("Factorial of "+ number + " is " + factorial(number));
        input.close();
    }
}