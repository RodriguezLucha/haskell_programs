-- file MathSpec.hs
module MathSpec where

import Test.Hspec (describe, hspec, it, shouldBe)

absolute n =
  if n < 0
    then negate n
    else n

main = hspec $ do
  describe "absolute" $ do
    it "returns the original number when given a positive input" $
      absolute 1 `shouldBe` 1

    it "returns a positive number when given a negative input" $
      absolute (-1) `shouldBe` 1

    it "returns zero when given zero" $
      absolute 0 `shouldBe` 0