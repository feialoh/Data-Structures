#include <iostream>
using namespace std;

long int factorial(int n) {
    if (n == 0) {
        return 1;
    }
    return n * factorial(n-1);
}

int main() {

    int n;
    cout<< "Enter the number: ";
    cin >> n;
    cout<< "Factorial of "<<n<<" is "<<factorial(n);
    return 0;
}

