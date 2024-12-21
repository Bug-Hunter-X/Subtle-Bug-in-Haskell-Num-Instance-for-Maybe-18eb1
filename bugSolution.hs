{-# LANGUAGE FlexibleInstances #-}

instance Num a => Num (Maybe a) where
  (+) (Just x) (Just y) = Just (x + y)
  (+) (Just x) Nothing = Just x
  (+) Nothing (Just y) = Just y
  (+) Nothing Nothing = Nothing
  (*) (Just x) (Just y) = Just (x * y)
  (*) (Just x) Nothing = Nothing
  (*) Nothing (Just y) = Nothing
  (*) Nothing Nothing = Nothing
  abs (Just x) = Just (abs x)
  abs Nothing = Nothing
  signum (Just x) = Just (signum x)
  signum Nothing = Nothing
  fromInteger x = Just (fromInteger x)

main :: IO ()
main = do
  print (Just 3 + Just 5)
  print (Just 3 * Just 5)
  print (Just 3 + Nothing)
  print (Nothing + Just 5)
  print (Just 3 * Nothing)
  print (Nothing * Just 5)