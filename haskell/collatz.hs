{-
    Written by https://github.com/Big-Iron-Cheems on 15/07/2026 (DD/MM/YYYY)
    
    Being a purely functional language, Haskell encourages immutable data
    and recursive evaluation over mutable state and loops.
    Rather than updating variables in place, we carry state through recursive calls
    until the sequence reaches 1.
-}

{-# LANGUAGE BangPatterns #-}

import Data.Time.Clock

step :: Integer -> Integer
step n
    | even n    = n `div` 2
    | otherwise = 3 * n + 1

collatz :: Integer -> (Integer, Integer)
collatz start = go start 0 start
  where
    go 1 !steps !peak = (steps, peak)
    go n !steps !peak =
        let n' = step n
        in go n' (steps + 1) (max peak n')

main :: IO ()
main = do
    putStr "Number: "
    n <- readLn

    start <- getCurrentTime
    let (steps, peak) = collatz n
    end <- getCurrentTime

    putStrLn $ "Steps: " ++ show steps
    putStrLn $ "Peak: " ++ show peak
    putStrLn $ "Time: " ++ show (diffUTCTime end start)