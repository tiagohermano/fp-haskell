-- Anonymous Functions
anon_func_return1 = (\x -> x+1) 1 -- 2
anon_func_return2 = (\x y z -> x+y+z) 1 2 3 -- 6

-- Higher Order Function: Takes an anonymous function as an argument
app :: (a -> b) -> a -> b
app f x = f x
app_return = app (\x -> x + 1) 1 -- 2

-- MAP FUNCTION
-- map :: (a -> a) -> [a] -> [a]
mapReturn1 = map (\x -> x+1) [1..5] -- [2,3,4,5,6]

-- Takes a list os tuples and convert is to a list of
-- the sum of the values of the tuples
mapReturn2 = map (\(x,y) -> x+y) [(1,2), (2,3), (3,4)] -- [3,5,7]

-- FILTER FUNCTION
-- filter :: (a -> Bool) -> [a] -> [a]
filter_return = filter (\x -> x > 2) [1..5] -- [3,4,5]
filter_return2 = filter (\(x,y) -> x /= y) [(1,2), (2,2)] -- [(1,2)]



