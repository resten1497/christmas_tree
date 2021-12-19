// Example program
#include <iostream>
using namespace std;

void star() {
    for (int i = 0; i < 8; i++)cout << " ";
    cout << "*\n";
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < i+6; j++)cout << " ";
        for (int j = 0; j < i * (-2) + 5; j++)cout << "*";
        cout << "\n";
    }

}
int dir[7] = {};
void tree(int num, int cnt, int st) {

    for (int i = 1; i <= 4; i++) {
        if (i == 4) {
            for (int j = 0; j < num-i+2; j++) cout << " ";
            for (int j = 0; j < cnt; j++) cout << "ㅡ";
        }
        else {
            for (int j = i; j <= num; j++) cout << " ";
            cout << "/";
            st += 2;
            for (int j = 0; j < st; j++) {
                if (j == i/2 - i % 2 && num == 6) cout << "*";
                else if (j == i/2 + i % 2 && num == 5)cout << "!";
                else cout << " ";
            }
            cout << "\\";
        }
        cout << "\n";
    }
}
int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(0);
    cout.tie(0);

    star();
    
    tree(6,4,0);
    tree(5,5,3);


    for (int i = 0; i < 12; i++) {
        if (i == 6 || i == 10) cout << "|";
        else cout << " ";
    }
    cout << "\n";
    for (int i = 0; i < 18; i++) {
        cout << "\'";
    }
    
    return 0;
}
