split :: Char -> String -> [String]
split c s = aux (c, s, [])
  where
    aux (c, s, xs)
      | s == "" = xs
      | head s == c = aux (c, dropWhile (==c)  s, xs ++ [""] )
      | otherwise =  aux (c, dropWhile (/= c) s, xs ++ [takeWhile (/= c) s])