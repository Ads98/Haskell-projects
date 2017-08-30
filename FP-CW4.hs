import Test.QuickCheck

chomp :: String -> String
chomp [] = []
chomp (x:xs) = x : takeWhile (==x) xs

munch :: String -> String
munch [] = []
munch xs = take 9 (chomp xs)

runs :: String -> [String]
runs [] = []
runs xs = munch xs : runs (drop (length(munch xs)) xs) 

encode :: String -> [(Char,Int)]
encode [] = []
encode xs = [(head ys, length ys)|ys <- runs xs]

flatten :: [(Char, Int)] -> String
flatten [] = []
flatten xs = concat [x : show(y) | (x,y) <- xs]

compress :: String -> String
compress = flatten.encode

decode :: [(Char,Int)] -> String
decode [] = []
decode xs = concat [replicate y x|(x,y) <- xs]

expand :: String -> [(Char, Int)]
expand [] = []
expand (x:y:zs) = (x,read [y]):expand zs

decompress :: String -> String
decompress = decode.expand

-- BONUS
inverse :: String -> Bool
inverse xs = decompress (compress xs) == xs

inverse2 :: String -> Bool
inverse2 xs = decode (encode xs) == xs

test1 :: String -> Bool 
test1 xs = concat (runs xs) == xs


