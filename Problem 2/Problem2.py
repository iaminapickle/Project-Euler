# Returns the ith even Fibonacci number
def fib(i):
    fib_list.append(4 * fib_list[i - 1] + fib_list[i - 2])
    return fib_list[i]

limit = 4000000
fib_list = [2, 8]
i = 2

while (fib(i) <= limit):    i += 1

fib_sum = sum([x for x in fib_list if x <= limit])
print(fib_sum)
