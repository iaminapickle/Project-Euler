#include <stdio.h>
int div_by_x(int x, int limit);

int main(void) {
  int total_sum = div_by_x(3, 1000) + div_by_x(5, 1000) - div_by_x(15, 1000);
  printf("The sum is %d.\n", total_sum);

  return 0;
}

int div_by_x(int x, int limit) {
    int n = (limit - 1) / x;
    return (float) x / 2 * (n * (n + 1));
}
