import Data.Char

cubes :: Int -> [(Int,Int)]
cubes n = [(x,x^2) |  x <- [1..n]]

myConstFunc :: Int -> [(Int,Int)]
myConstFunc n = [(x,1) | x <- [1..n]]

-- [(1,4),(1,5),(2,4),(2,5),(3,4),(3,5)]
f1 :: [(Int,Int)]
f1 = [(x,y) | x <- [1..3], y <- [4..5]]

-- [(4,1),(4,2),(4,3),(5,1),(5,2),(5,3)]
f2 :: [(Int,Int)]
f2 = [(x,y) | y <- [4..5], x <- [1..3]]

-- [(4,1),(5,1),(4,2),(5,2),(4,3),(4,3)]
f3 :: [(Int,Int)]
f3 = [(y,x) | x <- [1..3], y <- [4..5]]

isEven :: Integer -> Bool
isEven n = (n `mod` 2 == 0)

doubleAll :: [Integer] -> [Integer]
doubleAll xs = [ x*2 | x <- xs ]

capitalize :: String -> String
capitalize xs = [ toUpper(c) | c <- xs]

f4 = sum[i^2 | i <- [1..100]]

sigma' :: Integer
sigma' = sum[i^2 | i <- [1..100]]

sigmasq :: Integer -> Integer
sigmasq n = sum[i^2 | i <- [1..n]]

matches :: Integer -> [Integer] -> [Integer]
matches x xs = [i | (x`,i) <- zip xs [0] , x'==x ]



 