#include <stdio.h>
#define LIMIT 1000000

int main(void) {
  if (LIMIT <= 2) {
    printf("2");
    return 0;
  }

  int temp, fib1 = 2, fib2 = 8, fib_sum = 10;

  while (fib2 < LIMIT) {
    temp = fib2;
    fib2 = fib1 + 4 * fib2;
    fib1 = temp;

    fib_sum += fib2;
  }
  
  printf("%d\n", fib_sum);
  return 0;
}
