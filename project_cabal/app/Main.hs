module Main where

fac 1 = 1
fac n = temp
        where temp = n * fac (n - 1)

result = fac 5

main = print (result)