def div_by_x(x, limit):
    n = (limit - 1) // x
    return int(x / 2 * (n * (n + 1)))

total_sum = div_by_x(3, 1000) + div_by_x(5, 1000) - div_by_x(15, 1000)

print(f"The sum is {total_sum}.")
