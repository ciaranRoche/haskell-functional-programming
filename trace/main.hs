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

data Tree a = 
    EmptyTree
    | Node (Tree a) a (Tree a) deriving (Show, Read, Eq)

t :: Tree Int
t = Node (Node EmptyTree 3 EmptyTree) 5 (Node EmptyTree 7 EmptyTree)

occurs x (Node l y r)   | x == y = True
                        | x < y = occurs x l
                        | x > y = occurs x r

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = Node EmptyTree x EmptyTree
treeInsert x (Node l a r)   | x == a = Node l x r
                            | x <= a = Node (treeInsert x l) a r
                            | x > a = Node l a (treeInsert x r)

flatten :: Tree a -> [a]
flatten EmptyTree = []
flatten (Node EmptyTree x EmptyTree) = [x]
flatten (Node l x r) = flatten l
                        ++ [x]
                        ++ flatten r