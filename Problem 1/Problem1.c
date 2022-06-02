#include <stdio.h>

#define LIMIT 1000
int div_by_x(int x);

int main(void) {
  int total_sum = div_by_x(3) + div_by_x(5) - div_by_x(15);
  printf("The sum is %d.\n", total_sum);

  return 0;
}

int div_by_x(int x) {
    int n = (LIMIT - 1) / x;
    float res = (float)x / 2;
    return res * (n * (n + 1));
}
