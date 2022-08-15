find_largest_prime_factor :: Int -> Int
find_largest_prime_factor n = find_largest_prime_factor' n 1

find_largest_prime_factor' :: Int -> Int -> Int
find_largest_prime_factor' n i
  | i_plus >= n                     = n
  | n `mod` i_plus == 0             = find_largest_prime_factor' (n `div` i_plus) (i)
  | otherwise                       = find_largest_prime_factor' (n) (i_plus)
  where i_plus = i + 1

main :: IO()
main = do print(find_largest_prime_factor 600851475143)
