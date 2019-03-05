first :: [a] -> [a]
first xs = take ((length xs) `div` 2 ) xs

second :: [a] -> [a]
second xs = drop ((length xs) `div` 2) xs

halve :: [a] -> ([a], [a])
halve xs = (first xs, second xs)

halve_sol :: [a] -> ([a], [a])
halve_sol xs = (take half xs, drop half xs) where
    half = length xs `div` 2

take1 :: [a] -> ([a], [a])
take1 xs = ([head xs], tail xs)

third_head_tail :: [a] -> a
third_head_tail xs = head(tail(tail xs))

second_head_tail :: [a] -> a
second_head_tail xs = head(tail xs)

third' :: [a] -> a
third' xs = xs!!2

third_boop :: [a] -> a
third_boop (_ : (_ : (x : _))) = x


myAnd :: Bool -> Bool -> Bool
True `myAnd` True = True
_ `myAnd` _ = False

myOr :: Bool -> Bool -> Bool
False `myOr` False = False
_ `myOr` _ = True

iflucky :: Integral a => a -> String
iflucky x = 
    if x == 7
        then "Lucky You. Proceed directly to buy a lottery ticket"
        else if x == 13 
            then "You sadly are quite unlucky. Do not, under any circumstances, invest mondy today"
            else "mmmmmmm, Cant Say"


lucky :: Integral a => a -> String
lucky x
    | x == 7     = "Lucky You. Proceed directly to buy a lottery ticket"
    | x == 13    = "You sadly are quite unlucky. Do not, under any circumstances, invest mondy today"
    | otherwise  = "mmmmmmm, Cant Say"


plucky 7 = "Lucky You. Proceed directly to buy a lottery ticket"
plucky 13 = "You sadly are quite unlucky. Do not, under any circumstances, invest mondy today"
plucky _ = "mmmmmmm, Cant Say"

fst' :: (a,b,c) -> a
fst' (x,_,_) = x
snd' :: (a,b,c) -> b
snd' (_,y,_) = y 
trd' :: (a,b,c) -> c 
trd' (_,_,z) = z

luhnDouble :: Int -> Int
luhnDouble x
    | x * 2 >= 9    = (x*2)-9
    | otherwise     = x * 2 

luhn :: Int -> Int -> Int -> Int -> Bool
luhn x y z w 
    | luhnDouble x `mod` luhnDouble y `mod` luhnDouble z `mod` luhnDouble w == 0    = True
    | otherwise = False

luhnGetCheck :: Int -> Int -> Int -> Int
-- luhnGetCheck x y z = let c = (luhnDouble x + luhnDouble y + luhnDouble z)
--     in case () of
--         _   | (luhnDouble x + luhnDouble y + luhnDouble z + c) `mod` 10 == 0 = c
--             | otherwise 0
luhnGetCheck x y z = 10 - (luhnSum `mod` 10) where
    luhnSum = luhnDouble x + y + luhnDouble z
