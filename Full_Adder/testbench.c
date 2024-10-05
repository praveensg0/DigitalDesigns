#include <stdio.h>

void full_adder(int a, int b, int cin, int* sum, int* cout) {
    *sum = (a ^ b) ^ cin;
    *cout = (a & b) | (cin & (a ^ b));
}

int main() {
    int a, b, cin, sum, cout;

    printf("A B Cin | Sum Cout\n");

    for (a = 0; a <= 1; a++) {
        for (b = 0; b <= 1; b++) {
            for (cin = 0; cin <= 1; cin++) {
                full_adder(a, b, cin, &sum, &cout);
                printf("%d %d  %d  |  %d   %d\n", a, b, cin, sum, cout);
            }
        }
    }

    return 0;
}
