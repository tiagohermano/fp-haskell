import Data.List

-- Constructor x:xs []
constructed_list = 1 : 2 : 3 : 4 : 5 : [] -- [1,2,3,4,5]

-- Common List Operation Functions
head_return = head [1..5]
tail_return = tail [1..5]

null_return = null []

and_return = and [True, False, True]
or_return = or [True, False, True]

-- List Comprehension
list_comprehension_return1 = [ 2*x | x <- [1,2,3] ] -- [2,4,6]
list_comprehension_return2 = [ 2*x | x <- [1,2,3], x > 1 ] -- [4,6]

-- List Comprehension (multiple lists)
list_comprehension_return3 = [ (x,y) | x <- [1,2,3], y <- ['a' , 'b'] ] -- [(1,'a'),(1,'b'),(2,'a'),(2,'b'),(3,'a'),(3,'b')]

-- List Patterns
sum :: [Int] -> Int -- function signature: types declaration
sum [] = 0 -- pattern matching
sum (x:xs) = x + sum xs -- recursive call

evens :: [Int] -> [Int]
evens [] = []
evens (x: xs)
  | mod x 2 == 0 = x : evens xs
  | otherwise = evens xs

addTuples :: [(Int, Int)] -> [Int]
addTuples xs = [ x+y | (x,y) <- xs ]
addTuplesReturn = [(1,2), (2,3), (100, 100)] -- [3,5,200]

