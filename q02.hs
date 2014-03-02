{-
Find the last but one element of a list.

(Note that the Lisp transcription of this problem is incorrect.)

Example in Haskell:

Prelude> myButLast [1,2,3,4]
3
Prelude> myButLast ['a'..'z']
'y'
-}

myButLast :: [a] -> a
myButLast [] = error "Too few elements!"
myButLast (_:[]) = error "Too few elements!"
myButLast (x:_:[]) = x
myButLast (x:xs) = myButLast xs

main = do
	print $ myButLast [1,2,3,4]
	print $ myButLast ['a' .. 'z']