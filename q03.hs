{-
Find the K'th element of a list. The first element in the list is number 1.

Example:

* (element-at '(a b c d e) 3)
c

Example in Haskell:

Prelude> elementAt [1,2,3] 2
2
Prelude> elementAt "haskell" 5
'e'
-}

elementAt :: (Num b, Eq b) => [a] -> b -> a
elementAt (x:xs) 1 = x
elementAt (x:xs) n = elementAt xs (n - 1)

main = do
	print $ elementAt [1,2,3] 2
	print $ elementAt "haskell" 5

