module Main (main) where

import Test.Hspec

main :: IO ()
main =
  hspec do
    describe "" do
      it "is not implemented but still passes 😐" do
        'c' `shouldBe` 'c'
