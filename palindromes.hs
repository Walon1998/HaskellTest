palindromes :: [String] -> [String]
palindromes xs = [ x |  x <- [ x ++ y | x <- xs , y <- xs ], reverse x == x]