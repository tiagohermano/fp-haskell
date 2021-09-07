-- 1 Create a function `elem` that returns True if an 
-- element is in a given list and returns False otherwise
elem2 :: (Eq a) => a -> [a] -> Bool
elem2 _ [] = False
elem2 e (x:xs) = (e == x) || (elem2 e xs)

-- 2 Create a function `nub` that removes all
-- duplicates from a given list
nub2 :: (Eq a) => [a] -> [a]
nub2 [] = []
nub2 (x:xs)
  | x `elem` xs = nub2 xs
  | otherwise   = x : nub2 xs

-- 3 Create a function `isAsc` that returns
-- true if the list given to it is a list
-- of ascending order
isAsc :: [Int] -> Bool
isAsc [] = True
isAsc [x] = True
isAsc (x:y:xs) =
  (x <= y) && isAsc (y:xs)

-- 4 Create a function `hasPath` that
-- determines if a path from one node to
-- another exists within a directed graph
hasPath :: [(Int, Int)] -> Int -> Int -> Bool
hasPath [] x y = x == y
hasPath xs x y
  | x == y   = True
  | otherwise =
    let xs' = [ (n,m) | (n,m) <- xs, n /= x ] in
    or [ hasPath xs' m y | (n,m) <- xs, n == x ]

