

-- write your implementation for the coin change here



cntChange :: Int -> Int
cntChange n = sum n 7 [5,10,20,50,100,200,500]
 where
  sum n i xs
   | n == 0 = 1
   | n < 0 = 0
   | i<=0 && n>=1 = 0
   | otherwise = sum n (i-1) [5,10,20,50,100,200,500] + sum (n - xs!!(i-1)) i [5,10,20,50,100,200,500]

