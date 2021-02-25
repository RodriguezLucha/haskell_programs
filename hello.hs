main = do
  print (doubleDouble 2)

doubleDouble x = (* 2) x * 2

-- doubleDouble x = (\x -> x * 2) (x) * 2
