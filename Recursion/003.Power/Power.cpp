#include<iostream>
using namespace std;

double Pow(double num, int pow ) {
    if (pow == 0)
        return 1;

    if (pow < 0) {
        num = 1/num;
        pow = abs(pow);
    }

    double temp = Pow(num, pow/2);

    if (pow % 2 == 1) {
       return temp * temp * num;
    } else {
       return temp * temp;
    }
}

int main() {

    int number, pwr;
    cout<<"Enter number: ";
    cin>>number;
    cout<<"Enter power: ";
    cin>>pwr;

    cout<<number<<"**"<<pwr<< " = "<< Pow(number, pwr);
    return 0;
}