{-
(*) Find the number of elements of a list.

Example in Haskell:

Prelude> myLength [123, 456, 789]
3
Prelude> myLength "Hello, world!"
13
-}

myLength :: (Num b) => [a] -> b
myLength xs = foldr (\x acc -> acc + 1) 0 xs

main = do 
	print $ myLength [123, 456, 789]
	print $ myLength "Hello, world!"

