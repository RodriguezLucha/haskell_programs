main = do
  print (myGCD 20 16)

myGCD a b =
  if remainder == 0
    then b
    else myGCD b remainder
  where
    remainder = mod a b