-- f:: a -> b -> c -> d   ~> function that takes 3 arguments and returns 1 value
-- f:: a -> (b -> (c -> d)) function that takes 1 argument and return another functions that takes 1 argument and returns another function that return 1 value
-- The functions declared above are basically the same thing
-- basically, functions that have more than 1 argument doesn't exist.
-- every function takes 1 argument and return another function or an end result

-- example
add2 :: Int -> Int -> Int
add2 x y = x+y -- same thing
add2 x = (\y -> x+y) -- same thing
add2 = (\x -> (\y -> x+y)) -- same thing

-- passing 1 argument to a function that returns 
-- another function is called PARTIAL FUNCTION COMPOSITION

