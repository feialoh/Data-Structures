#include<iostream>
#include<vector>
using namespace std;

void subsetHelper(int i, vector<int> &subset, vector<int> &nums, vector<vector<int>> &ans) {
    
    if(nums.size() == i){
        ans.push_back(subset);
        return;
    }

    subset.push_back(nums[i]);
    subsetHelper(i+1, subset, nums, ans);
    subset.pop_back();
    subsetHelper(i+1, subset, nums, ans);
    return;
}

vector<vector<int>> powerSet(vector<int> &nums){
    vector<vector<int>> ans ;
    vector<int> subset ;
    subsetHelper(0, subset, nums, ans);
    return ans;
}

void arrayElements(vector<int> &arr){
    int len = arr.size();
    cout<<"[ ";
    for(int i = 0; i<len; i++) {
        cout<< arr[i];
        if(i!=len-1){
            cout<<", ";
            }
        }
    cout<<" ]\n";
}

int main() {
    
    vector<vector<int>> powerset; 
    vector<int> arr;
    int num;
    cout<<"Enter number of elements in power set: ";
    cin>>num;
    int value;
    for(int i = 0; i<num; i++) {
        cout<<"Enter number " <<i+1<< " : ";
        cin>>value;
        arr.push_back(value);
    }
    cout<<"Array elements: ";
    arrayElements(arr);
    cout<<"Power set: \n";
    powerset = powerSet(arr);
    for (vector<int> element: powerset) {
        arrayElements(element);
    }
    return 0;
}


// Sample Input : [1,2,3]
// Sample Output: [ [ ], [1], [2], [1,2], [3], [1,3], [2,3], [1,2,3] ]