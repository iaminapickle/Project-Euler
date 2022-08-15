def find_largest_prime_factor(n, i = 1):
    i += 1
    if n % i == 0:
        return find_largest_prime_factor(n // i, i - 1)
    else:
        for i in range(i, n):
            if n % i == 0:
                return find_largest_prime_factor(n // i, i)
        return n

print(find_largest_prime_factor(600851475143 ))
