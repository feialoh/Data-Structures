#include<iostream>
#include<vector>
using namespace std;

void reverse(int l, int r, vector<int> &arr) {
    if (l > r) {
        return;
    }
    swap(arr[l], arr[r]);
    reverse(l+1, r-1, arr);
}

void reverseArray(vector<int> &arr, int m) {
     reverse(m, arr.size() - 1, arr);
}

void arrayElements(vector<int> &arr){
    int len = arr.size();
    cout<<"{ ";
    for(int i = 0; i<len; i++) {
        cout<< arr[i];
        if(i!=len-1){
            cout<<", ";
            }
        }
    cout<<" }\n";
}

int main() {

    int num; 
    string s;
    vector<int> arr;
    
    cout<<"Enter number of elements to be entered: ";
    cin>>num;
    int value;
    for(int i = 0; i<num; i++) {
        cout<<"Enter number " <<i+1<< " : ";
        cin>>value;
        arr.push_back(value);
    }
    cout<<"Array Before: ";
    arrayElements(arr);
    reverseArray(arr, 0);
    cout<<"Array After: ";
    arrayElements(arr);
    return 0;
}
