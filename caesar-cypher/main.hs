import Data.Char

let2Int :: Char -> Int
let2Int c = ord c - ord 'a'

int2Let :: Int -> Char
int2Let n = chr (ord 'a' + n)

shift :: Int -> Char -> Char
shift n c   | isLower c = int2Let ((let2Int c + n) `mod` 26)
            | otherwise = c

encode' :: Int -> String -> String
encode' n xs = [shift n x | x <- xs]