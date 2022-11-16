#include<iostream>
using namespace std;

bool isPalindromeHelper(int l, int r, string &s) {

    if (l >= r) {
        return true;
    }
    if (s[l] != s[r]) {
        return false;
    }

    return isPalindromeHelper(l+1, r-1, s);
}

bool isPalindrome(string s) {

    string str = "";
    for (char c: s) {
        
        if((isalnum(c) == false) || (c == ' ')) {
            continue;
        }

        if (isupper(c)){
            c += 32;
        }

        str.push_back(c);
    }

    if(str.size() == 0)
        return true ;
    return isPalindromeHelper(0 , str.size() - 1 , str) ;
}

int main() {

    string s;
    cout<<"Enter the string: ";
    getline (cin, s);
    if (isPalindrome(s)) {
        cout<<"Its Palindrome";
    } else {
        cout<<"Not a palindrome";
    }
    return 0;
}
