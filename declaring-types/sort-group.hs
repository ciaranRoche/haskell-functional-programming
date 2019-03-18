module ComparingSortingGrouping  where
    import Data.List(sort,sortBy,group,groupBy)
    
    data Colour =  Blue | Green | Orange | Purple | Red | Yellow 
      deriving (Eq,Ord,Show)
    
    people = 
      [("Tim",24,Red,"Oregon")
      ,("Tom",36,Blue,"Ohio")
      ,("Mary",19,Yellow,"Vermont")
      ,("Zach",41,Blue,"California")
      ,("Ann",9,Purple,"Michigan")
      ,("Jane",50,Red,"Oregon")
      ,("Harry",71,Green,"Utah")  
      ,("Jim",80,Blue,"Vermont")
      ,("Robert",23,Red,"California")
      ,("Lois",32,Green,"Michigan")
      ,("Barbara",50,Red,"Oregon")
      ,("Caleb",15,Yellow,"Utah")
      ,("Vicki",24,Red,"Oregon")
      ,("David",50,Green,"Oregon")
      ,("Justin",50,Purple,"Oregon")
      ,("Andrew",29,Red,"Oregon")
      ]
    
    name   (nm,ag,clr,st) = nm  
    age   (nm,ag,clr,st)  =  ag
    color (nm,ag,clr,st)  = clr  
    state (nm,ag,clr,st)  = st  
    
    ------------------------------------
    -- the names of all people who live in Oregon
    
    p1 = sort [name p | p <- people, state p == "Oregon"]
    -------------------------------------------
    -- How many people live in California
    
    p2 = length  [name p | p <- people, state p == "California"] 
    
    
    -------------------------------------------------
    -- the list of ages of people who live in Utah
    
    p3 = sort [age p | p <- people, state p == "Utah"]
    
    ----------------------------------------------
    -- The names of all people in the survey
    -- in alphabetical order
    
    p4 = sort [name p | p <- people]
    
    ----------------------------------------------------
    -- The names and color of all people, sorted by color
    
    p5:: [(String,Colour)]
    p5 = sortBy sc [(name p, color p) | p <- people]
        where sc (x1, x2) (y1, y2) = compare x2 y2

    p5lambda = sortBy (\(n1, col1)(n2, col2) -> compare col1 col2)[(name p, color p)| p <- people]
    --------------------------------------------------------
    -- The color and the count of all those with that color
    p6t = group (sort [color p | p <- people])
    p6:: [(Colour,Int)]
    p6 = sort
    
    -----------------------------------------------------
    -- The color and a list of all names with that color
    
    p7:: [(Colour,[String])]
    p7 = undefined
    
    
    ----------------------------------------------
    -- The names and ages of all those who live in Oregon
    -- grouped by age.
    
    p8:: [[(String,Integer)]]
    p8 = undefined