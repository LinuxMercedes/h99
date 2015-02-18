{-

	Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.

	Example:

	*Main> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 
							'a', 'd', 'e', 'e', 'e', 'e']
	["aaaa","b","cc","aa","d","eeee"]

-}

_pack :: (Eq a) => a -> [[a]] -> [[a]]
_pack x (acc:accs)
	| x == head acc = (x:acc):accs
  | otherwise = [x]:acc:accs
_pack x [] = [[x]]

pack :: (Eq a) => [a] -> [[a]]
pack xs = foldr _pack [] xs

main = do
	print $ pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
	print $ pack "mmmmasdffffffmawelll"
	print $ pack ([] :: [Int])
