#include <stdio.h>
#include "operations.h"

int main() {
    int a = 10, b = 5;

    printf("Addition: %d\n", add(a, b));
    printf("Subtraction: %d\n", subtract(a, b));
    printf("Multiplication: %d\n", multiply(a, b));
    printf("Division: %d\n", divide(a, b));
    printf("Modulus: %d\n", modulus(a, b));

    return 0;
}

