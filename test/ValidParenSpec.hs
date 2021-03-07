module ValidParenSpec where

import Test.Hspec (describe, hspec, it, shouldBe)

-- 1. What is the end goal?
-- 2. What happens when you get to the end goal?
-- 3. List all possible alternatives
-- 4. Determine rinse and repeat process
-- 5. Ensure each alternative moves your toward your goal

isValid str = isValid' str []

isValid' [] [] = True
isValid' [] _ = False
isValid' ('(' : s) stack = isValid' s ('(' : stack)
isValid' (')' : s) ('(' : stackLeft) = isValid' s stackLeft
isValid' ('{' : s) stack = isValid' s ('{' : stack)
isValid' ('}' : s) ('{' : stackLeft) = isValid' s stackLeft
isValid' ('[' : s) stack = isValid' s ('[' : stack)
isValid' (']' : s) ('[' : stackLeft) = isValid' s stackLeft
isValid' (_ : s) stack = isValid' s stack

main = hspec $ do
  describe "parenthesis validator" $ do
    it "valid none" $
      isValid "abc" `shouldBe` True

    it "valid empty" $
      isValid "" `shouldBe` True

    it "valid only parenthesis" $
      isValid "()" `shouldBe` True

    it "valid short code" $
      isValid "(adbs)" `shouldBe` True

    it "longer code" $
      isValid "([]{[dssdfa]adf})[asdfa]{{adf}()}" `shouldBe` True

    it "mismatched opener and closer" $
      isValid "([sdfs][]}" `shouldBe` False

    it "first is not valid" $
      isValid ")(" `shouldBe` False
