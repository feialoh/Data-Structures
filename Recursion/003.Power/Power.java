import java.util.Scanner;

class Power {

    static Double Pow(Double num, int pow ) {
        if (pow == 0) {
            return 1.0;
        }

        if (pow < 0) {
            num = 1/num;
            pow *= -1;
        }

        Double temp = Pow(num, pow/2);

        if(pow % 2 == 1) {
            return temp * temp * num;
        } else {
            return temp * temp;
        }
    }
    public static void main(String args[]) {
        System.out.print("Enter number: ");
        Scanner input = new Scanner(System.in);
        Double number = input.nextDouble();
        System.out.print("Enter power: ");
        int pwr = input.nextInt();
        System.out.print(number + "**" + pwr + " = "+ Pow(number, pwr));
        input.close();
    }
}