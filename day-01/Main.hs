zipSlidingPairs :: Int -> [b] -> [(b, b)]
zipSlidingPairs window xs = zip xs (drop window xs)

isDepthIncreasing :: (Int, Int) -> Bool
isDepthIncreasing (a, b) = a < b

partOne :: String -> String
partOne = show . sum . map (fromEnum . isDepthIncreasing) . zipSlidingPairs 1 . map read . lines

partTwo :: String -> String
partTwo = show . sum . map (fromEnum . isDepthIncreasing) . zipSlidingPairs 3 . map read . lines

main :: IO ()
main = interact $ unlines . sequence [partOne, partTwo]
