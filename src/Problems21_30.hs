module Problems21_30 where

import Data.List
import System.Random
import System.IO.Unsafe

--import Test.Framework
--import Test.Framework.Providers.HUnit
--import Test.Framework.Providers.QuickCheck2
--
--import Test.HUnit as HUnit

{-
 - Problem 21
 - Insert an element at a given position into a list.
 - Example:
 - > insertAt 'X' "abcd" 2
 - "aXbcd"
 -}


--problem21 = testGroup "problem 21" [
--  testCase "Insert an element at a given position into a list."
--  $ insertAt 'X' "abcd" 2 @?= "aXbcd"]

{-
 - Problem 22
 - Create a list containing all integers within a given range.
 - Example:
 - Prelude> range 4 9
 - [4,5,6,7,8,9]
 -}

--problem22 = testGroup "problem 22" [
--  testCase "Create a list containing all integers in a given range."
--  $ range 4 9 @?= [4,5,6,7,8,9]]

{-
 - Problem 23
 - Extract a given number of randomly selected elements from a list.
 - Example:
 - Prelude System.Random>rndSelect "abcdefgh" 3 >>= show
 - "eda"
 -}



--problem23 = testGroup "problem 23" [
--  testCase "Extract given number of randomly selected elements from list"
--                  $ length (pureRndSelect "abcdefgh" 3) @?= 3 ]

{-
 - Problem 24
 - Lotto: Draw N different random numbers from the set 1..M.
 - Example:
 - Prelude System.Random>diffSelect 6 49
 - [23,1,17,33,21,37]
 -}

--problem24 = testGroup "problem 24" [
--  testCase "Draw N different random number from the set 1..M"
--                  $ length (diffSelect 6 49) @?= 6 ]
{-
 - Problem 25
 - Generate a random permutation of the elements of a list.
 - Example:
 - Prelude>rndPermu "abcdef"
 - Prelude>"badcef"
 -}

--problem25 = testGroup "problem 25" [
--  testCase "Generate a random permutation of the elements of a list."
--                  $ length (rndPermu "abcdef") @?= length "abcdef" ]


{-
 - Problem 26
 - (**) Generate the combinations of K distinct objects chosen from
 - the N elements of a list
 - In how many ways can a committee of 3 be chosen from a group of 12
 - people? We all know that there are C(12,3) = 220 possibilities
 - (C(N,K) denotes the well-known binomial coefficients). For pure
 - mathematicians,  this result may be great. But we want to really
 - generate all the possibilities in a list.
 -
 - Example:
 - > combinations 3 "abcdef"
 - ["abc","abd","abe",...]
 -}

--problem26 = testGroup "problem 26" [
--  testCase "combinations of 0 out of '' " $ 0 @?= length (combinations 0 ""),
--  testCase "combinations of 1 out of 'a' " $ ["a"] @?= combinations 1 "a",
--  testCase "combinations of 1 out of 'ab' " $ ["a", "b"] @?= combinations 1 "ab",
--  testCase "combinations of 2 out of 'ab' " $  ["ab"] @?= combinations 2 "ab",
--  testCase "combinations of 2 out of 'abc' " $ sort ["ab", "bc", "ac"] @?= sort (combinations 2 "abc"),
--  testCase "Generate the combinations of K distinct objects chosen from N elements"
--    $ 220 @?= length (combinations 3 "abcdefghijkl")
--  ]

{-
 - Problem 27
 - Group the elements of a set into disjoint subsets.
 - a) In how many ways can a group of 9 people work in 3 disjoint
 - subgroups of 2, 3 and 4 persons? Write a function that generates all
 - the possibilities and returns them in a list.
 - b) Generalize the above predicate in a way that we can specify a
 - list of group sizes and the predicate will return a list of groups.
 - Note that we do not want permutations of the group members;
 - i.e. ((ALDO BEAT) ...) is the same solution as ((BEAT ALDO) ...).
 - However, we make a difference between ((ALDO BEAT) (CARLA DAVID) ...)
 - and ((CARLA DAVID) (ALDO BEAT) ...).
 - You may find more about this combinatorial problem in a good book
 - on discrete mathematics under the term "multinomial coefficients".
 - Example:
 - P27> group [2,3,4] ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"]
 - [[["aldo","beat"],["carla","david","evi"],["flip","gary","hugo","ida"]],...]
 - (altogether 1260 solutions)
 - 27> group [2,2,5] ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"]
 - [[["aldo","beat"],["carla","david"],["evi","flip","gary","hugo","ida"]],...]
 - (altogether 756 solutions)
 -}

{- Problem 28
 - Sorting a list of lists according to length of sublists
 -
 - a) We suppose that a list contains elements that are lists
 - themselves. The objective is to sort the elements of this list
 - according to their length. E.g. short lists first, longer lists
 - later, or vice versa.
 - Example:
 - Prelude>lsort ["abc","de","fgh","de","ijkl","mn","o"]
 - > ["o","de","de","mn","abc","fgh","ijkl"]
 - b) Again, we suppose that a list contains elements that are lists
 - themselves. But this time the objective is to sort the elements of
 - this list according to their length frequency; i.e., in the
 - default, where sorting is done ascendingly, lists with rare lengths
 - are placed first, others with a more frequent length come later.
 -
 - Example:
 -
 - > lfsort ["abc", "de", "fgh", "de", "ijkl", "mn", "o"]
 - ["ijkl","o","abc","fgh","de","de","mn"]
 -
 -}

--tests21_30 = [problem21, problem22, problem23, problem24, problem25, problem26]
