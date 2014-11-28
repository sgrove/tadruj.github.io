-- TODO: toDigits functions don't work with leading zeros 
toDigits :: Integer -> [Integer]
toDigits n
    | n <= 0 = []
    | otherwise = toDigits (n `div` 10) ++ [n `mod` 10]

-- Pattern matching version
-- TODO: toDigits' function doesn't work with negative numbers and leading zeros
toDigits' :: Integer -> [Integer]
toDigits' 0 = []
toDigits' n = toDigits' (n `div` 10) ++ [n `mod` 10]

-- Reverse a list of Integers
reverse' :: [Integer] -> [Integer]
reverse' [] = []
reverse' (n:ns) = reverse' ns ++ [n]

-- Double every other item on the list
doubleEveryOther' :: [Integer] -> [Integer]
doubleEveryOther' [] = []
doubleEveryOther' (n:[]) = [n] ++ []
doubleEveryOther' (n:ns:ms) = [n, ns * 2] ++ doubleEveryOther' ms

-- Double every other item on the list from backwards
doubleEveryOther :: [Integer] -> [Integer]
-- This is so COOL
-- doubleEveryOther n = reverse' (doubleEveryOther' (reverse' n))
doubleEveryOther = reverse' . doubleEveryOther' . reverse'

