#include <iostream>
using namespace std;

int sumOfFirstN(int n) {
    if (n == 1) {
        return 1;
    }
    return n + sumOfFirstN(n-1);
}

int main() {

    int n;
    cout<<"Enter the limit: ";
    cin>>n;
    cout<<"Sum of first "<<n<<" number is: "<< sumOfFirstN(n);
    return 0;
}