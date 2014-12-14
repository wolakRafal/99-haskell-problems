module Problems11_20 where

--import Test.Framework
--import Test.Framework.Providers.HUnit
--import Test.Framework.Providers.QuickCheck2
--
--import Test.HUnit as HUnit

import qualified Problems1_10
{-
 - Problem 11
 - Modified run-length encoding.
 -
 - Modify the result of problem 10 in such a way that if an element has no
 - duplicates it is simply copied into the result list. Only elements
 - with duplicates are transferred as (N E) lists.
 -
 - Example in Haskell:
 - P11> encodeModified "aaaabccaadeeee"
 - [Multiple 4 'a',Single 'b',Multiple 2 'c',
 -  Multiple 2 'a',Single 'd',Multiple 4 'e']
 -
 -}

--problem11 = testGroup "problem 11" [
--            testCase "Encoding a string allowing Multiple and Single types"
--            $ [Multiple 4 'a',Single 'b',Multiple 2 'c',
--                    Multiple 2 'a',Single 'd',Multiple 4 'e']
--            @?= encodeModified "aaaabccaadeeee"
--            ]

{-
 - Problem 12
 - Decode a run-length encoded list.
 -
 - Given a run-length code list generated as specified in problem 11.
 - Construct its uncompressed version.
 -
 - Example in Haskell:
 - P12> decodeModified
 -        [Multiple 4 'a',Single 'b',Multiple 2 'c',
 -         Multiple 2 'a',Single 'd',Multiple 4 'e']
 - "aaaabccaadeeee"
 -}

--problem12 = testGroup "problem 12" [
--            testCase "Decode the same damned thing we did"
--            $ "aaaabccaadeeee"
--            @?= decodeModified [Multiple 4 'a',Single 'b',Multiple 2 'c',
--                     Multiple 2 'a',Single 'd',Multiple 4 'e']
--            ]

{-
 - Problem 13
 - Run-length encoding of a list (direct solution).
 -
 - Implement the so-called run-length encoding data compression method
 - directly. I.e. don't explicitly create the sublists containing the
 - duplicates, as in problem 9, but only count them. As in problem P11,
 - simplify the result list by replacing the singleton lists (1 X) by X.
 -
 - Example in Haskell:
 - P13> encodeDirect "aaaabccaadeeee"
 - [Multiple 4 'a',Single 'b',Multiple 2 'c',
 -  Multiple 2 'a',Single 'd',Multiple 4 'e']
 -
 -}


--problem13 = testGroup "problem 13" [
--            testCase "Run-length encode by counting not making sublists"
--            $ [Multiple 4 'a', Single 'b', Multiple 2 'c',
--                Multiple 2 'a', Single 'd', Multiple 4 'e']
--            @?= encodeDirect "aaaabccaadeeee"
--            ]

{-
 - Problem 14
 - Duplicate the elements of a list.
 -
 - Example in Haskell:
 - > dupli [1, 2, 3]
 - [1,1,2,2,3,3]
 -}

--
--problem14 = testGroup "problem 14" [
--            testCase "Duplicate the elements of a list"
--            $ [1,1,2,2,3,3]
--            @?= dupli [1,2,3]
--            ]

{-
 - Problem 15
 - Replicate the elements of a list a given number of times.
 -
 - Example in Haskell:
 - > repli "abc" 3
 - "aaabbbccc"
 -
 -}

--problem15 = testGroup "problem 15" [
--            testCase "Replicate the elements of a list x times"
--                $ "aaabbbccc"
--                @?= repli "abc" 3
--                ]
{-
 - Problem 16
 - Drop every N'th element from a list.
 -
 - Example in Haskell:
 - *Main> dropEvery "abcdefghik" 3
 - "abdeghk"
 -
 -}

--
--problem16 = testGroup "problem 16" [
--            testCase "Drop every N'th element of a list"
--                $ "abdeghk" @?= dropEvery "abcdefghik" 3
--                ]
{-
 - Problem 17
 - Split a list into two parts; the length of the first part is given.
 - Do not use any predefined predicates.
 -
 - Example in Haskell:
 - *Main> split "abcdefghik" 3
 - ("abc", "defghik")
 -
 -}


--problem17 = testGroup "problem 17" [
--            testCase "Split a list into two parts with the length of the first part given"
--            $ ("abc", "defghik") @?= split "abcdefghik" 3
--            ]

{-
 - Problem 18
 - Extract A Slice From a list.
 -
 - Given two indices, i and k, the slice is the list containing the elements
 - between the i'th and k'th element of the original list (both limits
 - included). Start counting the elements with 1.
 -
 - Example in Haskell:
 - *Main> slice ['a','b','c','d','e','f','g','h','i','K'] 3 7
 - "cdefg"
 -}

--problem18 = testGroup "problem 18" [
--  testCase "Get a slice of list between index i and k, inclusive"
--  $ "cdefg" @?= slice "abcdefghiK" 3 7
--  ]

{-
 - Problem 19
 -
 - Rotate a list N places to the left.
 - Hint: Use the predefined functions length and (++).
 -
 - Examples in Haskell:
 - *Main> rotate ['a','b','c','d','e','f','g','h'] 3
 - "defghabc"
 - *Main> rotate ['a','b','c','d','e','f','g','h'] (-2)
 - "ghabcdef"
 -
 -}

--problem19 = testGroup "problem 19" [
--  testCase "Rotate a list N places" $ "defghabc" @?= rotate "abcdefgh" 3,
--  testCase "Rotate with a negative" $ "ghabcdef" @?= rotate "abcdefgh" (-2)
--  ]

{-
 - Problem 20
 -
 - Remove the K'th element from a list.
 -
 - Example in Haskell:
 - *Main> removeAt 1 "abcd"
 - ('b',"acd")
 -
-}

--problem20 = testGroup "problem 20" [
--  testCase "Remove the K'th element from a list" $ removeAt 1 "abcd" @?= ('b', "acd")
                   ]

--tests11_20 = [problem11, problem12, problem13, problem14, problem15,
--              problem16, problem17, problem18, problem19, problem20
--             ]