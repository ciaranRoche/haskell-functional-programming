module CreatingListsWithComprehensions  where
    
    -- For each named declaration below. Use the comment preceeding
    -- it as a guide to creating a comprehension that computes the
    -- same value as that displayed in the comment.
    
    -- [8,9,10,11,12]
    x1 = [x | x <- [8..12]]
    
    
    -- [20,19,18,17,16]
    x2 = [x | x <- [20, 19..16]]
    
    
    -- [10,20,30,40,50,60]
    x3 = [x*10 | x <- [1..6]]
    
    -- [500,450,400,350]
    x4 = [x | x <- [500, 499..350], x `mod` 50 == 0]
    -- [50*x | x <- [10,9,8,7]]
    
    
    -- [(1,1),(1,2),(1,3),(2,1),(2,2),(2,3)]
    x5 = [(x, y) | x <- [1..2], y <- [1..3]]
    
    
    -- [(1,99),(2,99),(3,99),(4,99)]
    x6 = [(x, 99) | x <- [1..4]]
    
    
    -- -- [(1,2),(2,3),(3,4),(4,5)]
    x7 = [(x,x+1) | x <- [1..4]]
    
    -- [[1],[1,2],[1,2,3],[1,2,3,4],[1,2,3,4,5]]
    -- nested sequences and comprehensions
    x9 = [[1..x] | x <- [1..5]]
    
    
    days = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]
    
    
    -- ["Monday","Tuesday","Wednesday","Thursday","Friday"]
    -- hint use a comprehension with a filter
    weekday = [x | x <- days, x /= "Sunday" && x /= "Saturday" ]
    
    
    -- [[1,2,3,4,5,6,7]
    -- ,[8,9,10,11,12,13,14]
    -- ,[15,16,17,18,19,20,21]
    -- ,[22,23,24,25,26,27,28]]
    -- hint: nest a sequence in a comprehension
    --       think about  (i*7 + 1)  and  (i*7 + 7)
    x10 = [[(i*7 - 6)..(i*7)] | i <- [1..4]]
    
    
    -- ["MonDay","TuesDay","WeDnesDay","ThursDay","FriDay"]
    -- Note all lowercase 'd' turned to upper case 'D'
    -- hint: nested comprehensions
    --        if c=='d' then 'D' else c

    replaceD [] = []
    replaceD (x:xs) = 
         if x == 'd' 
         then 'D' : replaceD xs 
         else x : replaceD xs

    x11 = [replaceD x | x <- days]
    