in_range :: Integer -> Integer -> Integer -> Bool
in_range min max x =
  x >= min && x <= max

-- LET Bindings
in_range2 min max x =
  let in_lower_bound = min <= x
      in_upper_bound = max >= x
  in
  in_lower_bound && in_upper_bound

-- WHERE
in_range3 min max x = ilb && iub
  where
    ilb = min <= x
    iub = max >= x

-- IF, THEN, ELSE
in_range4 min max x =
  if ilb then iub else False
  where
    ilb = min <= x
    ilb = max >= x

-- Infix
add a b = a+b
add 10 20 -- EQUIVALENT
10 `add` 20 -- EQUIVALENT

