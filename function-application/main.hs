bigCubes :: [Int] -> [Int] 
bigCubes xs = filter (>500) $ map (^3) xs 



