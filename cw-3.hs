second1 :: [a] -> a
second1 xs = head(tail xs)

second2 :: [a] -> a
second2 xs = xs !! 1

second3 :: [a] -> a
second3 (_:xs) = head xs

xor1 :: Bool -> Bool -> Bool
xor1 True True =False
xor1 False False = False
xor1 _ _ = True

xor2 :: Bool -> Bool -> Bool
xor2 x y = if x  && y == False then True else
              if x == False && y  then True else 
                 False

xor3 :: Bool -> Bool -> Bool
xor3 x y= x/=y

sumsqr :: Int -> Int
sumsqr n= sum[n^2 | n<-[1..n]]

grid :: Int -> [(Int,Int)]
grid n = [(x,y) | x<-[0..n] , y<-[0..n] , y/=x]

euclid :: Int -> Int -> Int

euclid x y | x==y       =x
           | x-y >0    =euclid (x-y) y
           | y-x >0    =euclid x (y-x)
           | x>y       =x
           | otherwise =y

fastrev :: [a] -> [a]
fastrev xs = rev xs []
rev :: [a] -> [a] -> [a]
rev [] ys = ys
rev (x:xs) ys = rev xs (x:ys)