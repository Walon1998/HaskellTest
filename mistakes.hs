{- Indentation errors -}

f x = x
  g y = y

-- End Example

f x | x > 2 = 0
| otherwise = 5

-- End Example

count val n m p = isval n + isval m + isval p
        where
      isval x
    | x == val = 1
    | otherwise = 0

-- End Example

main = do
  let x = 5
  in return x

-- End Example

{- Type errors -}

f x = x + True

g x y   | x > y = g (x - y)
        | y > x = g (y - x)
        -- | otherwise = x

-- End Example

-- Pattern matching failure
max tuple
    | tuple == (x, y) && x > y = x
    | tuple == (x, y) && y > x = y

-- End Example

{- Logic errors -}

fact 0 = 0
fact n = n * fact (n - 0)

g x y   | x > y = g (x - y) y
        | y < x = g (y - x) y
        | otherwise = 1

