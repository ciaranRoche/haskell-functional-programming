second :: [a] -> [a]
second xs = head (tail xs)

swap :: (a,b) -> (b,a)
swap (x,y) = (y,x)

pair x y = (x,y)

double :: Num a => a -> a
double x = x*2

pallindrome :: Char a => [a] -> Bool
pallindrome xs = reverse xs == xs

f :: a -> a
twice :: a -> a
twice f x = f (f x)
