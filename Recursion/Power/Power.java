import java.util.Scanner;

class Power {

    static long Pow(int num, int pow ) {
        if (pow == 0) {
            return 1;
        }
        return num*Pow(num, pow-1);
    }
    public static void main(String args[]) {
        System.out.print("Enter number: ");
        Scanner input = new Scanner(System.in);
        int number = input.nextInt();
        System.out.print("Enter power: ");
        int pwr = input.nextInt();
        System.out.print(number + "**" + pwr + " = "+ Pow(number, pwr));
        input.close();
    }
}