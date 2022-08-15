fib_sum :: Int -> Int -> Int -> Int -> Int
fib_sum f1 f2 f_sum limit
  | f2 >= limit  = f_sum
  | otherwise    = fib_sum f2 (f1 + 4 * f2) (f_sum + f1 + 4 * f2)

main :: IO()
main
  | limit <= 2   = print("2")
  | limit <= 8   = print("10")
  | otherwise    = print(fib_sum 2 8 0 1000)
