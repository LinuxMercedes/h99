{-
Flatten a nested list structure.

Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively). 

We have to define a new data type, because lists in Haskell are homogeneous.

 data NestedList a = Elem a | List [NestedList a]

*Main> flatten (Elem 5)
[5]
*Main> flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
[1,2,3,4,5]
*Main> flatten (List [])
[]
-}

data NestedList a = Elem a | List [NestedList a]

flatten :: (NestedList a) -> [a]
flatten (Elem x) = [x]
flatten (List []) = []
flatten (List xs) = foldl (\acc x -> acc ++ (flatten x)) [] xs

main = do
	print $ flatten (Elem 5)
	print $ flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
	print $ (flatten (List []) :: [Int]) -- typecast empty list since print can't infer what it should be
