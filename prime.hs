prime :: Int -> Bool
prime n
  | n <= 1 = False
  | otherwise = not (or [ n `mod` x == 0  | x <- [2..(floor (sqrt (fromIntegral  n))) ] ])