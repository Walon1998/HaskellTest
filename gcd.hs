-- Exercise Sheet 1, Assignment 1

myGcd :: Double -> Double -> Double
myGcd x y
  | x == y = x
  | y > x = myGcd y x
  | otherwise = myGcd (x-y) y

--gcdInt :: Int -> Int -> Int
--gcdInt x y = myGcd (abs x) (abs y)
--  | x < 0 && y < 0 = myGcd (-x) (-y)
--  | x < 0 = myGcd (-x) y
--  | y < 0 = myGcd x (-y)
--  | otherwise = myGcd x y

