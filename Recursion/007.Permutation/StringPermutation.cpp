#include<iostream>
#include<vector>
#include<bits/stdc++.h>
using namespace std;

void helper(int pos, string &str, vector<string> &ans){
    
    if (pos >= str.size()){
        ans.push_back(str);
    }
    unordered_set <char> m;
    for (int i=pos; i<str.size(); i++){
        if (m.find(str[i]) != m.end()) continue;
        m.insert(str[i]);
        swap(str[i],str[pos]);
        helper(pos+1, str, ans);
        swap(str[i],str[pos]);
    }
}

vector<string> permutation(string &str){
    vector<string> ans;
    helper(0, str, ans);
    sort(ans.begin(),ans.end());
    return ans;
}

int main() {

    string str;
    vector<string> allString;
    cout<<"Enter the string: ";
    cin>>str;
    cout<<"Possible permutations are: \n";
    allString = permutation(str);
    for(string s: allString){
        cout<<s<<"\n";
    }
    cout<<"Total = "<<allString.size();
    return 0;
}