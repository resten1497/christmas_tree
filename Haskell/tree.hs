import Data.List

n :: Int
n = 9

main :: IO ()
main = do
    putStrLn $ replicate (n - 1) ' ' ++ "*"
    mapM_ putStrLn [replicate (n - i) ' ' ++ replicate (2 * i - 1) 'A' | i <- [1..n]] 
    mapM_ putStrLn $ replicate 3 $ replicate (n - 2) ' ' ++ "| |"
