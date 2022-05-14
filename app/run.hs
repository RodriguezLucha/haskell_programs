import Debug.Trace

fac 1 = 1
fac n = let temp = n * fac (n - 1)
        in trace (show n ++ " " ++ show temp) temp

result = fac 5

main = print result
