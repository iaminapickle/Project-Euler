#include <stdio.h>

int call_find_largest_prime_factor(long long n);
int find_largest_prime_factor(long long n, int i);

int call_find_largest_prime_factor(long long n) {
  return find_largest_prime_factor(n, 1);
}

int find_largest_prime_factor(long long n, int i) {
  i++;
  if (i >= n) {
    return n;
  } else if (n % i == 0) {
    return find_largest_prime_factor(n / i, i - 1);
  } else {
    return find_largest_prime_factor(n, i);
  }
}


int main(void) {
  printf("%d.\n", call_find_largest_prime_factor(600851475143));
  return 0;
}
