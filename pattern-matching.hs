not2 :: Bool -> Bool
not2 False = True
not2 True = False

-- Define (&&&) on class Bool, using double dispatch
(&&&) :: Bool -> Bool -> Bool
True &&& True = True
_    &&& _ = False

head2 (a: _) = a
tail2 (a: as) = as

-- Lambdas (anonymous functions) defined by backslash
-- \x = x + 1
