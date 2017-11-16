import System.IO;
import Data.Char;
import Data.List.Split
import Data.List
import System.Exit;

commands :: [String]
commands = ["c", "help", "q", "n", "d", "s", "b", ""]

isCommand :: String -> [String] -> Bool
isCommand xs []   = False
isCommand xs cmds | head cmds == xs = True
                  | otherwise = isCommand xs (tail cmds)

splitInput :: String -> [String]
splitInput = splitOn " "

formatArguments :: [String] -> [Int]
formatArguments []  = []
formatArguments xs  = map read xs


reverseAll :: [[Int]] -> [[Int]]
reverseAll = map reverse


sortbyYvalue :: [[Int]] -> [[Int]]
sortbyYvalue nss = reverseAll (sort (reverseAll nss))


filterEmpty :: [[Int]] -> [[Int]]
filterEmpty = filter (not .null)


rmdups :: Eq a => [a] -> [a]
rmdups []       = []
rmdups (x:xs)   = x : rmdups (filter (/= x) xs)


funkyShit :: Int -> Int -> Int -> [[Int]] -> String
funkyShit l x y [[]]
    | x == 1 && y == 1            = show y ++ "  .  " ++ funkyShit l (x+1) y []
    | x == l && y == l            = ".\n"
    | (x == l && y /= l) && y > 8 = ".\n" ++ show (y+1) ++ " " ++ funkyShit l 1 (y+1) []
    | x == l && y /= l            = ".\n" ++ show (y+1) ++ "  " ++ funkyShit l 1 (y+1) []
    | otherwise                   = ".  " ++ funkyShit l (x+1) y []

funkyShit l x y []
    | x == 1 && y == 1            = show y ++ "  .  " ++ funkyShit l (x+1) y []
    | x == l && y == l            = ".\n"
    | (x == l && y /= l) && y > 8 = ".\n" ++ show (y+1) ++ " " ++ funkyShit l 1 (y+1) []
    | x == l && y /= l            = ".\n" ++ show (y+1) ++ "  " ++ funkyShit l 1 (y+1) []
    | otherwise                   = ".  " ++ funkyShit l (x+1) y []

funkyShit l x y (ns:nss)
    | (x == l && y == l)   && x/= x1            = ".\n"
    | x == l && y == l                          = "X\n"
    | (x == x1 && y == y1) && x /= l && y > 8   = "X" ++ "  " ++ funkyShit l (x+1) y nss
    | (x == x1 && y == y1) && (x /= l) &&
      (x == 1 && y == 1)                        = show y ++ "  X  " ++ funkyShit l (x+1) y nss
    | (x == x1 && y == y1) && x /= l            = "X  "  ++ funkyShit l (x+1) y nss
    | (x == x1 && y == y1) && (x == l && y > 8) = "X\n" ++ show y ++ " " ++ funkyShit l 1 (y+1) nss
    | (x == x1 && y == y1) && x == l            = "X\n" ++ show y ++ "  " ++ funkyShit l 1 (y+1) nss
    | x == 1 && y == 1                          = show y ++ "  .  "  ++ funkyShit l (x+1) y (ns:nss)
    | (x /= x1 || y /= y1) && (x == l && y > 8) = ".\n" ++ show (y+1) ++ " " ++ funkyShit l 1 (y+1) (ns:nss)
    | (x /= x1 || y /= y1) && x == l            = ".\n" ++ show (y+1) ++ "  " ++ funkyShit l 1 (y+1) (ns:nss)
    | (x /= x1 || y /= y1) && y > 9             = ".  " ++ funkyShit l (x+1) y (ns:nss)
    | x /= x1 || y /= y1                        = ".  " ++ funkyShit l (x+1) y (ns:nss)
    | otherwise = error "Something really strange happened"
    where
        x1 = head ns
        y1 = ns !! 1


numbersToChars :: [Int] -> String
numbersToChars []       = ""
numbersToChars (n:ns)
    | n == 1 = show n ++ "  " ++ numbersToChars ns
    | n < 9 = show n ++ "  " ++ numbersToChars ns
    | otherwise = show n ++ " " ++ numbersToChars ns

createWithCells :: Int -> [[Int]] -> IO ()
createWithCells n [[]] = create n
createWithCells n [] = create n
createWithCells n cells = do
    putStrLn ("   " ++ numbersToChars [1..n])
    putStr (funkyShit n 1 1 (rmdups(filterEmpty(sortbyYvalue cells))))

cellInRange :: [Int] -> Int -> Bool
cellInRange [] _ = False
cellInRange cell l | ((0 < x) && (x <= l)) && ((0 < y) && (y <= l)) = True
                   | otherwise = False
                   where
                       x = head cell
                       y = cell !! 1

dropAndCreateWithCells :: Int -> [Int] -> [[Int]] -> IO ()
dropAndCreateWithCells n d cells = do
    putStrLn ("   " ++ numbersToChars [1..n])
    putStr (funkyShit n 1 1 (filterEmpty(sortbyYvalue(dropCell d (rmdups cells)))))

create :: Int -> IO ()
create n = do
    putStrLn ("   " ++ numbersToChars [1..n])
    putStr (funkyShit n 1 1 [])

cls :: IO ()
cls = putStr "\ESC[2J"


dropCell :: [Int] -> [[Int]] -> [[Int]]
dropCell d [] = []
dropCell d (ns:nss) | d /= ns = dropCell d nss ++ [ns]
                    | otherwise = nss


adjacentCells :: [Int] -> [[Int]] -> [[Int]]
adjacentCells _ [[]]        = []
adjacentCells _ []          = []
adjacentCells cell (ns:nss)
    | x1 == x && y1 == y = adjacentCells cell nss
    | (x1 == x - 1 || x1 == x + 1 || x1 == x) &&
      (y1 == y - 1 || y1 == y + 1 || y1 == y) = ns : adjacentCells cell nss
    | otherwise = adjacentCells cell nss
    where
        x1 = head ns
        y1 = ns !! 1
        x = head cell
        y = cell !! 1

survives :: [Int] -> [[Int]] -> (Int,Int) -> Bool
survives _ [] _ = error "failed at survives"
survives _ [[]] _ = error "failed at survives"
survives cell cells s | l >= fst s && l <= snd s = True
                      | otherwise = False
                      where
                          l = length (adjacentCells cell cells)

survivors :: [[Int]] -> (Int, Int) -> [[Int]]
survivors [] _  = []
survivors [[]] _  = [[]]
survivors cells s =
    rmdups [x | x <- cells, survives x cells s]
                    --where s1 = ((fst s)-1, (snd s)-1)

removeEmpty :: [[Int]] -> [[Int]]
removeEmpty []       = []
removeEmpty (ns:nss) | ns == [] = removeEmpty nss
                     | otherwise = ns : removeEmpty nss

executionLoop :: Int -> [[Int]] -> (Int, Int) -> (Int, Int) -> Bool -> IO ()
--executionLoop _ [] _  = exitFailure
executionLoop n ns ss bs False = do
    putStrLn "enter a command"
    input <- getLine
    if input == "" then do
            putStrLn "No board created yet, unable to step forward one"
            executionLoop n ns ss bs False
    else
        if isCommand (head (splitInput input)) commands then
            let i1 = head (formatArguments(tail(splitInput input)))
                i2 = formatArguments(tail (splitInput input)) in
            case [head input] of
                "q" -> exitSuccess
                "c" -> create i1
                "n" -> do
                    putStrLn "No board created yet, unable to put new cell"
                    executionLoop 0 ns ss bs False
                "d" -> do
                    putStrLn "No board created yet, unable to drop"
                    executionLoop 0 ns ss bs False
                "s" -> do
                    putStrLn (show i1 ++ " " ++ show (i2 !! 1))
                    executionLoop n ns (i1, i2 !! 1) bs False
                "b" -> do
                    putStrLn (show i1 ++ " " ++ show (i2 !! 1))
                    executionLoop n ns ss (i1, i2 !! 1) False
        else putStrLn "Invalid command"
    executionLoop (head(formatArguments(tail(splitInput input)))) ns ss bs True

executionLoop n ns ss bs True = do
    putStrLn "enter a command"
    input <- getLine
    if input == "" then
        if fst ss > 0 && snd ss > 0 then
            do
                createWithCells n (survivors ns ss)
                executionLoop n (survivors ns ss) ss bs True
        else
            do
                putStrLn "Invalid rules, set rules with \'s\' and \'b\'"
                executionLoop n ns ss bs True
    else
        if isCommand (head(splitInput input)) commands then
            let i1 = head (formatArguments(tail(splitInput input)))
                i2 = formatArguments(tail (splitInput input)) in
                case head input of
                    'q' -> exitSuccess
                    'c' -> do
                        create i1
                        executionLoop i1 ns ss bs True
                    'n' -> do
                        if cellInRange [i1, i2 !! 1] n then
                            do
                                createWithCells n ([[i1, i2 !! 1]] ++ ns)
                                executionLoop n (i2:ns) ss bs True
                        else
                            do
                                putStrLn "Invalid cell"
                                createWithCells n ns
                        executionLoop n ns ss bs True
                    'd' -> do
                        dropAndCreateWithCells n [i1, i2 !! 1] ns
                        executionLoop n (dropCell [i1, i2 !! 1] ns) ss bs True
                    's' -> executionLoop n ns (i1, i2 !! 1) bs True
                    'b' -> do
                        putStrLn (show i1 ++ " " ++ show (i2 !! 1))
                        executionLoop n ns ss (i1, i2 !! 1) True
        else putStrLn "invalid command"
    executionLoop n ns ss bs True

main = executionLoop 0 [] (-1,-1) (-1,-1) False
