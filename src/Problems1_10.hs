module Problems1_10 where

{-
 - Problem 1
 - Find the last element of a list.
 -
 - Example in Haskell:
 - Prelude> myLast [1,2,3,4]
 - 4
 - Prelude> myLast ['x','y','z']
 - 'z'
 -}
myLast ([]) = error "Empty List"
myLast (x:[]) = x
myLast (_:xs) = myLast xs

-- TESTs
--problem1 :: Test.Framework.Test
--problem1 = testGroup "problem 1" [
--           testCase "the last element [1,2,3,4]"    $ 4   @?= myLast [1,2,3,4],
--	   testCase "last element of ['x','y','z']" $ 'z' @?= myLast "xyz"
--           ]

{-
 - Problem 2
 - Find the last but one element of a list.
 -
 - Example in Haskell:
 - Prelude> myButLast [1,2,3,4]
 - 3
 - Prelude> myButLast ['a'..'z']
 - 'y'
 -}


--problem2 :: Test.Framework.Test
--problem2 = testGroup "problem 2" [
--           testCase "second to last element of [1..4]"     $ 3   @?= myButLast [1..4],
--           testCase "second to last element of ['a'..'z']" $ 'y' @?= myButLast "xyz"
--           ]

{-
 - Problem 3
 - Find the K'th element of a list. The first element in the list is number 1.
 -
 - Example in Haskell:
 - Prelude> elementAt [1,2,3] 2
 - 2
 - Prelude> elementAt "haskell" 5
 - 'e'
 -}


--problem3 :: Test.Framework.Test
--problem3 = testGroup "problem 3" [
--          testCase "second element of [1,2,3]"    $ 2   @?= elementAt [1,2,3] 2
--        , testCase "fifth element of \"haskell\"" $ 'e' @?= elementAt "haskell" 5
--        ]

{-
 - Problem 4
 - Find the number of elements of a list.
 -
 - Example in Haskell:
 -
 - Prelude> myLength [123, 456, 789]
 - 3
 - Prelude> myLength "Hello, world!"
 - 13
 -}


--problem4 :: Test.Framework.Test
--problem4 = testGroup "problem 4" [
--        testCase "length of [123,456,789] is 3"      $ 3  @?= myLength [123, 456, 789],
--        testCase "length of \"Hello, world!\" is 13" $ 13 @?= myLength "Hello. world!"
--        ]

{- Problem 5
 - Reverse a list.
 -
 - Example in Haskell:
 - Prelude> reverse "A man, a plan, a canal, panama!"
 - "!amanap ,lanac a ,nalp a ,nam A"
 - Prelude> reverse [1,2,3,4]
 - [4,3,2,1]
 -}

--problem5 :: Test.Framework.Test
--problem5 = testGroup "problem 5" [
--        testCase "reverse a string" $ "!amanap ,lanac a ,nalp a ,nam A" @?= myreverse "A man, a plan, a canal, panama!",
--        testCase "reverse a list of number" $ [4,3,2,1] @?= myreverse [1,2,3,4]
--        ]

{-
 - Problem 6
 - Find out whether a list is a palindrome. A palindrome can be read
 - forward or backward; e.g. (x a m a x).
 -
 - Example in Haskell:
 - *Main> isPalindrome [1,2,3]
 - False
 - *Main> isPalindrome "madamimadam"
 - True
 - *Main> isPalindrome [1,2,4,8,16,8,4,2,1]
 - True
 -}

--problem6 :: Test.Framework.Test
--problem6 = testGroup "problem 6" [
--        testCase "check a list" $ False @?= isPalindrome [1,2,3]
--        , testCase "check a string" $ True @?= isPalindrome "madamimadam"
--        , testCase "check a longer list" $ True @?= isPalindrome [1,2,4,8,16,8,4,2,1]
--        ]
{-
 - Problem 7
 - Flatten a nested list structure.
 -
 - Transform a list, possibly holding lists as elements into a `flat'
 - list by replacing each list with its elements (recursively).
 -
 - Example in Haskell:
 -
 - *Main> flatten (Elem 5)
 - [5]
 - *Main> flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
 - [1,2,3,4,5]
 - *Main> flatten (List [])
 - []
 -}

--problem7 :: Test.Framework.Test
--problem7 = testGroup "problem 7" [
--        testCase "flatten a 1-element list" $ [5] @?= myflatten (Elem 5)
--        , testCase "flatten a multi-depth list" $ [1,2,3,4,5] @?= myflatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
--        , testCase "flattening empty list is empty list" $ ([]::[Int]) @?= myflatten (List [])
--        ]
{-
 - Problem 8
 - Eliminate consecutive duplicates of list elements.
 - If a list contains repeated elements they should be replaced with a single
 - copy of the element. The order of the elements should not be changed.
 -
 - Example in Haskell:
 -
 - > compress ["a","a","a","a","b","c","c","a","a","d","e","e","e","e"]
 - ["a","b","c","a","d","e"]
 -}

--problem8 :: Test.Framework.Test
--problem8 = testGroup "problem 8" [
--        testCase "remove duplicates from an iterable container" $ ["a","b","c","a","d","e"] @?= compress ["a","a","a","a","b","c","c","a","a","d","e","e","e","e"]
--        ]

{- Problem 9
 - Pack consecutive duplicates of list elements into sublists. If a list
 - contains repeated elements they should be placed in separate sublists.
 -
 - Example in Haskell:
 - *Main> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a',
 -              'a', 'd', 'e', 'e', 'e', 'e']
 - ["aaaa","b","cc","aa","d","eeee"]
 -}

--problem9 :: Test.Framework.Test
--problem9 = testGroup "problem 9" [
--        testCase "pack conecutive duplicates of list elements into sublists" $ ["aaaa","b","cc","aa","d","eeee"] @?= pack "aaaabccaadeeee"
--        ]

{- Problem 10
 - Run-length encoding of a list. Use the result of problem P09 to implement
 - the so-called run-length encoding data compression method. Consecutive
 - duplicates of elements are encoded as lists (N E) where N is the number of
 - duplicates of the element E.
 -
 - Example in Haskell:
 - encode "aaaabccaadeeee"
 - [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
 -}


--problem10 :: Test.Framework.Test
--problem10 = testGroup "problem 10" [
--        testCase "run-length encode a list of duplicates" $ [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')] @?= encode "aaaabccaadeeee"
--        ]

-- tests1_10 :: [Test]
--tests1_10 = [ problem1, problem2, problem3, problem4, problem5, problem6, problem7, problem8, problem9, problem10 ]