import Data.Char

cap :: [Char] -> [Char]
-- cap xs = map toUpper xs
cap = map toUpper 

squareall :: [Int] -> [Int]
-- squareall xs = map (\x -> x*x) xs
squareall = map (\x -> x*x)

addone :: [Int] -> [Int]
addone = map (\x -> x+1)

nestedreverse :: [[Char]] -> [[Char]]
-- nestedreverse = foldl (\xs x -> x:xs reverse x) [] 
-- nestedreverse xs = reverse(map reverse xs)
nestedreverse = reverse. map reverse

atfront :: a -> [[a]] -> [[a]]
atfront x = map (\z -> x:z)

lengths :: [[a]] -> [Int]
lengths = map (\xs -> length(xs))

sumsq :: Int -> Int
sumsq n = sum [ x*x | x <- [1..n]]

sumsqA :: Int -> Int
sumsqA n = sum (squareall [1..n])

myfilter :: (a -> Bool) -> [a] -> [a]
myfilter p = concat.map b
     where b x 
            | p x = [x]
            | otherwise = []


ex61 = (\x -> x*x)
ex62 = (\x -> x*(x*2))
ex63 = (\x -> (\y -> x*y))
ex64 y = (\x -> if x < y then -1 else if x == y then 1 else 0)


myabs = (\x -> if x < 0 then x*(-1) else x)
mymax y = (\x -> if x < y then y else x) 
mymin y = (\x -> if x < y then x else y)

lengthr :: [Int] -> Int
lengthr = foldr (\x y -> 1 + y) 0

minlistr :: [Int] -> Int
minlistr = foldr1 min

myreverse :: [a] -> [a]
myreverse = foldr (\x y -> y ++ [x]) []

            

