#include<iostream>
using namespace std;

long int Pow(int num, int pow ) {
    if (pow == 0)
        return 1;

    return num*Pow(num, pow-1);
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