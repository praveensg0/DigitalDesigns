#include <stdio.h>

void half_adder(int a, int b, int *sum, int *carry) {
    *sum = a ^ b;
    *carry = a & b;
}

void full_adder(int a, int b, int cin, int *sum, int *carry) {
    int s1, c1, c2;

    half_adder(a, b, &s1, &c1);
    half_adder(s1, cin, sum, &c2);
    *carry = c1 | c2;
}

int main() {
    int a, b, cin, sum, carry;

    for (int i = 0; i < 8; i++) {
        a = (i >> 2) & 1; 
        b = (i >> 1) & 1;  
        cin = i & 1;      
        full_adder(a, b, cin, &sum, &carry);
        printf("A: %d, B: %d, Cin: %d => Sum: %d, Carry: %d\n", a, b, cin, sum, carry);
    }

    return 0;
}
