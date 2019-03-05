subt :: (Int, Int) -> Int
subt (x,y) = x-y

myadd :: Int -> Int -> Int -> Int
myadd x y z = x+y+z

mycopy :: a -> (a,a)
mycopy a = (a,a)

myapply :: (a -> b) -> a -> b
myapply a b =  
