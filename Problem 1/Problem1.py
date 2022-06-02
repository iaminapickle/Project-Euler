limit = 1000

def div_by_x(x):
    n = (limit - 1) // x
    print(n)
    return x / 2 * (n * (n + 1))

total_sum = div_by_x(3) + div_by_x(5) - div_by_x(15)

print(total_sum)
