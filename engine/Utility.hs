module Utility where

import Data.List
import Data.Char

lc_first :: String -> String
lc_first str@(s:ss) = if any (flip isPrefixOf str) [
	"Tyler"
	, "Emma"
	, "Mark"
	, "Tracy"
	, "Carlos"
	, "Paul"
	, "Wonda"
	 ]
	then s:ss
	else toLower s:ss

chomp :: String -> String
chomp []                      = []
-- chomp ('\'':'s':xs)           = " 's" ++ chomp xs
-- chomp ('s':'\'':xs)           = "s 's" ++ chomp xs
chomp ('s': 'o': 'm': 'e': 'o': 'n': 'e': xs) = " some &+ one " ++ chomp xs
-- chomp ('e': 'v': 'e': 'r': 'y': 't': 'h': 'i': 'n': 'g': xs) = " every &+ thing " ++ chomp xs
chomp('\x2019': xs) = "'" ++ chomp xs
chomp (' ': 'i': 't': '\'': 's': ' ': xs)	= " it is " ++ chomp xs
chomp (' ': ',': ' ': xs) = " , " ++ chomp xs
chomp ('1': ',': '0': xs) = "1,0" ++ chomp xs
chomp ('1': ',': '8': xs) = "1,8" ++ chomp xs
chomp (x:xs) | x `elem` ".,?？" = chomp xs
            | otherwise      =     x:chomp xs

leading_space :: String -> String
leading_space (' ': xs) = leading_space xs
leading_space ('\t': xs) = leading_space xs
leading_space xs = xs

be_morphology :: [String]
be_morphology = ["are", "is", "were", "was", "been", "being"]
