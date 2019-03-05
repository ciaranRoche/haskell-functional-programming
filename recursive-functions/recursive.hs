sumdown :: Int -> Int
sumdown 0 = 0
sumdown n = n + sumdown (n-1)

exponention :: Int -> Int -> Int
exponention 0 _ = 0
exponention x 0 = 1
exponention x y = x * exponention x (y-1)

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci x = fibonacci (x-1) + fibonacci (x-2)

myInit :: [a] -> [a]
myInit [] = []
myInit [_] = []
myInit (x:xs) = x : myInit xs

myAnd :: [Bool] -> Bool
myAnd [] = False
myAnd [True] = True
myAnd [False] = False
myAnd (x:xs) = x && myAnd xs

myConcat :: [[a]] -> [a]
myConcat [] = []
myConcat (xs:xss) = xs ++ myConcat xss

myReplicate :: Int -> a -> [a]
myReplicate 0 y = []
myReplicate x y = y : myReplicate (x-1) y 

myNth :: Int -> [a] -> a 
myNth 0 (x:xs) = x
myNth y (x:xs) = myNth (y-1) xs

myElm :: Eq a => a -> [a] -> Bool
myElm y [] = False
myElm y (x:xs) = y == x || myElm y xs

mySum :: [Int] -> Int
mySum [] = 0
mySum (x:xs) = x + mySum xs

myTake :: Int -> [a] -> [a]
myTake _ [] = []
myTake 0 _ = []
myTake x (y:ys) = y : myTake (x-1) ys

myDouble :: Int -> Int
myDouble x = 2 * x

myDoubleAll :: [Int] -> [Int]
myDoubleAll xs = [myDouble x | x <- xs]


  
