{-# LANGUAGE FlexibleInstances #-}

instance Num a => Num (Maybe a) where
  (+) (Just x) (Just y) = Just (x + y)
  (+) _ _ = Nothing
  (*) (Just x) (Just y) = Just (x * y)
  (*) _ _ = Nothing
  abs (Just x) = Just (abs x)
  abs Nothing = Nothing
  signum (Just x) = Just (signum x)
  signum Nothing = Nothing
  fromInteger x = Just (fromInteger x)

main :: IO ()
main = do
  print (Just 3 + Just 5)
  print (Just 3 * Just 5)