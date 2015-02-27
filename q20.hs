{-
Remove the K'th element from a list.

Example in Haskell:

*Main> removeAt 2 "abcd"
('b',"acd")

-}

removeAt :: Int -> [a] -> (a, [a])
removeAt n xs = 
	let spl = splitAt (n - 1) xs
	in (head.snd $ spl, (fst spl) ++ (tail.snd $ spl))

main = do
	print $ removeAt 2 "abcd"

