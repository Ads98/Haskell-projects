e1 :: [Bool]
e1 = [True,False,True]

e2 :: [[Int]]
e2 = [[1,2],[3,4]]

e3 :: (Char,Bool)
e3 = ('a',True)

e4 :: [(String,Int)]
e4 = [("Hello",5),("world",7)]

e5 :: Int -> Int
e5 n = n*2

e6 :: Int -> Int -> Int
e6 n m= 1+5+4

e7 :: (a,b) -> (b,a)
e7 (x,y) = (y,x)

e8 :: a -> (a,a)
e8 x = (x,x)

nums::[Int]
nums = [1,2,3,4,5]

table::[(Bool,Int)]
table = [(False,1),(True,2),(False,3)]

one:: a->[a]
one x = [x]

three:: y->(y,y,y)
three x = (x,x,x)

first::a->b->a
first x y = x

mult:: Int->(Int->Int)
mult m n = m*n
