import Debug.Trace

multby2 :: Num a=> [a] -> [a]
multby2 [] = []
multby2 (x:xs) = x*2 : multby2 xs

multby2' :: Num a=> [a] -> [a]
multby2' [] = trace "running on empty" []
multby2' (x:xs) = trace "recursing" x*2 : multby2' xs

--Note use of (Num a, Show a) here - we need to use show. 
multby2'' :: (Num a, Show a)=> [a] -> [a]
multby2'' [] = trace "running on empty" []
multby2'' (x:xs) = trace ("value of x = "  ++ show x)  x*2 : multby2'' xs

fact :: Int -> Int
fact 0 = trace "we got one" 1
fact x = trace ("value of x = " ++ show x) x * fact (x - 1)

sort :: (Ord a, Show a)=> [a] -> [a]
sort [] = []
sort [x] = [x]
sort ( x : xs ) = insert x (sort xs)

insert :: (Ord a, Show a)=> a -> [a] -> [a]
insert x [ ] = [ x ]
insert x ( y : ys ) = if x <= y then (x:y:ys) else y : insert x ys