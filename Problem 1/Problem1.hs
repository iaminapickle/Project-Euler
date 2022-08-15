div_by_x :: Int -> Int -> Int
div_by_x x limit = round(((fromIntegral (x)) / 2) * n * (n + 1)) where
  n = fromIntegral((limit - 1) `div` x)

main :: IO()
main = do print(div_by_x 3 1000 + div_by_x 5 1000 - div_by_x 15 1000)
