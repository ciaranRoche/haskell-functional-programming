data Expr = Val Int | Add Expr Expr | Mult Expr Expr
data Op = EVAL_ADD Expr | ADD Int | MULT Int | EVAL_MULT Expr

type Cont = [Op]

eval :: Expr -> Cont -> Int
eval (Val n) c = exec c n
eval (Add x y) c = eval x (EVAL_ADD y:c)
eval (Mult x y) c = eval x (EVAL_MULT y:c)

exec :: Cont -> Int -> Int
exec [] n = n
exec (EVAL_ADD y : c) n = eval y (ADD n: c)
exec (EVAL_MULT y : c) n = eval y (MULT n: c)
exec (ADD n : c) m = exec c (n + m)
exec (MULT n : c) m = exec c (n * m)

val :: Expr -> Int
val e = eval e []

data Nat = Zero | Succ Nat

nat2int :: Nat -> Int
nat2int Zero = 0
nat2int (Succ n) = 1 + nat2int n

int2nat :: Int -> Nat
int2nat 0 = Zero
int2nat n = Succ (int2nat (n-1))

myAdd :: Nat -> Nat -> Nat
myAdd m n = int2nat (nat2int m + nat2int n)

myAdd2 :: Nat -> Nat -> Nat
myAdd2 Zero n = n
myAdd2 (Succ m) n = Succ (myAdd2 m n)

-- data Tree a = Leaf a | Node (Tree a) a (Tree a)

-- occurs :: Ord a => a -> Tree a -> Bool
-- occurs x (Leaf y) = x == y
-- occurs x (Node l y r) = case compare x y of
--             EQ -> True
--             LT -> occurs x l 
--             GT -> occurs x r

data Tree a = Leaf a | Node (Tree a) (Tree a)

t :: Tree Int
t = Node (Node (Leaf 1)(Leaf 4))(Node (Leaf 6)(Leaf 9))

flatten :: Tree a -> [a]
flatten (Leaf x) = [x]
flatten (Node l r) = flatten l 
                    ++ flatten r

leaves :: Tree a -> Int
leaves x = length(flatten x)

balanced :: Tree a -> Bool
balanced x = if ((leaves x `mod` 2) == 0) = true


