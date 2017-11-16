import System.IO;
import Data.Char;
import Data.List.Split
import Data.List
import System.Exit;

commands :: [String]
commands = ["c", "help", "q", "n", "d", "s", "b", "?"]

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


createBoard :: Int -> Int -> Int -> [[Int]] -> String
createBoard l x y []
    | x == 1 && y == 1            = show y ++ "  .  " ++ createBoard l (x+1) y []
    | x == l && y == l            = ".\n"
    | (x == l && y /= l) && y > 8 = ".\n" ++ show (y+1) ++ " " ++ createBoard l 1 (y+1) []
    | x == l && y /= l            = ".\n" ++ show (y+1) ++ "  " ++ createBoard l 1 (y+1) []
    | otherwise                   = ".  " ++ createBoard l (x+1) y []

createBoard l x y (ns:nss)
    | (x == l && y == l)   && x/= x1            = ".\n"
    | x == l && y == l                          = "X\n"
    | (x == x1 && y == y1) && x /= l && y > 8   = "X" ++ "  " ++ createBoard l (x+1) y nss
    | (x == x1 && y == y1) && (x /= l) &&
      (x == 1 && y == 1)                        = show y ++ "  X  " ++ createBoard l (x+1) y nss
    | (x == x1 && y == y1) && x /= l            = "X  "  ++ createBoard l (x+1) y nss
    | (x == x1 && y == y1) && (x == l && y > 8) = "X\n" ++ show y ++ " " ++ createBoard l 1 (y+1) nss
    | (x == x1 && y == y1) && x == l            = "X\n" ++ show y ++ "  " ++ createBoard l 1 (y+1) nss
    | x == 1 && y == 1                          = show y ++ "  .  "  ++ createBoard l (x+1) y (ns:nss)
    | (x /= x1 || y /= y1) && (x == l && y > 8) = ".\n" ++ show (y+1) ++ " " ++ createBoard l 1 (y+1) (ns:nss)
    | (x /= x1 || y /= y1) && x == l            = ".\n" ++ show (y+1) ++ "  " ++ createBoard l 1 (y+1) (ns:nss)
    | (x /= x1 || y /= y1) && y > 9             = ".  " ++ createBoard l (x+1) y (ns:nss)
    | x /= x1 || y /= y1                        = ".  " ++ createBoard l (x+1) y (ns:nss)
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
createWithCells n [] = create n
createWithCells n cells = do
    putStrLn ("   " ++ numbersToChars [1..n])
    putStr (createBoard n 1 1 (rmdups(filterEmpty(sortbyYvalue cells))))

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
    putStr (createBoard n 1 1 (filterEmpty(sortbyYvalue(dropCell d (rmdups cells)))))

create :: Int -> IO ()
create n = do
    putStrLn ("   " ++ numbersToChars [1..n])
    putStr (createBoard n 1 1 [])


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
survives cell cells s | l >= fst s && l <= snd s = True
                      | otherwise = False
                      where
                          l = length (adjacentCells cell cells)

survivors :: [[Int]] -> (Int, Int) -> [[Int]]
survivors [] _  = []
survivors cells s =
    rmdups [x | x <- cells, survives x cells s]


newBornCells :: Int -> Int -> Int -> [[Int]] -> (Int, Int) -> [[Int]]
newBornCells _ 0 _ _ _    = []
newBornCells _ _ _ [] _   = []
newBornCells x y n cells b
    | x > n || y > n                        = newBornCells (x-1) y n cells b
    | x == 0 && (l >= fst b && l <= snd b ) = new : newBornCells (x+n) (y-1) n cells b
    | l >= fst b && l <= snd b              = new : newBornCells (x-1) y n cells b
    | x == 0                                = newBornCells (x+n) (y-1) n cells b
    | otherwise                             = newBornCells (x-1) y n cells b
    where
        new = [x,y]
        l = length (adjacentCells [x,y] cells)


executionLoop :: Int -> [[Int]] -> (Int, Int) -> (Int, Int) -> Bool -> IO ()
--executionLoop _ [] _  = exitFailure
executionLoop n ns ss bs False = do
    putStrLn "enter a command"
    input <- getLine
    if input == "" then do
            putStrLn "No board created yet, unable to step forward one"
            executionLoop 0 ns ss bs False
    else
        if isCommand (head (splitInput input)) commands then
            let i1 = head (formatArguments(tail(splitInput input)))
                i2 = formatArguments(tail (splitInput input)) in
            case head input of
                'q' -> exitSuccess
                'c' -> do
                    create i1
                    executionLoop i1 ns ss bs True
                'n' -> do
                    putStrLn "No board created yet, unable to put new cell"
                    executionLoop 0 ns ss bs False
                'd' -> do
                    putStrLn "No board created yet, unable to drop"
                    executionLoop 0 ns ss bs False
                's' -> if i1 > 0 && i2 !! 1 > 0 then
                            executionLoop n ns (i1, i2 !! 1) bs False
                        else
                            do
                                putStrLn "Invalid rules for s, must be greater than 0"
                                executionLoop 0 ns ss bs False
                'b' -> if i1 > 0 && i2 !! 1 > 0 then
                            executionLoop n ns ss (i1, i2 !! 1) False
                        else
                            do
                                putStrLn "Invalid rules for s, must be greater than 0"
                                executionLoop n ns ss (i1, i2 !! 1) False
                '?' -> do
                    putStr "S: "
                    print ss
                    putStr "\nB: "
                    print bs
        else putStrLn "Invalid command"
    executionLoop (head(formatArguments(tail(splitInput input)))) ns ss bs True

executionLoop n ns ss bs True = do
    putStrLn "enter a command"
    input <- getLine
    if input == "" then
        if (fst ss > 0 && snd ss > 0) && (fst bs > 0 && snd bs > 0) then
            let newCells = rmdups (survivors ns ss ++ newBornCells n n n ns bs) in
            do
                print ns
                createWithCells n newCells
                executionLoop n newCells ss bs True
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
                                createWithCells n ([i1, i2 !! 1] : ns)
                                executionLoop n (i2:ns) ss bs True
                        else
                            do
                                putStrLn "Invalid cell"
                                createWithCells n ns
                        executionLoop n ns ss bs True
                    'd' -> do
                        dropAndCreateWithCells n [i1, i2 !! 1] ns
                        executionLoop n (dropCell [i1, i2 !! 1] ns) ss bs True

                    's' -> if i1 > 0 && i2 !! 1 > 0 then
                                executionLoop n ns (i1, i2 !! 1) bs True
                            else
                                do
                                    putStrLn "Invalid rules for s, must be greater than 0"
                                    executionLoop 0 ns ss bs True
                    'b' -> if i1 > 0 && i2 !! 1 > 0 then
                                executionLoop n ns ss (i1, i2 !! 1) True
                            else
                                do
                                    putStrLn "Invalid rules for b, must be greater than 0"
                                    executionLoop n ns ss (i1, i2 !! 1) True
                    '?' -> do
                        putStr "S: "
                        print ss
                        putStr "\nB: "
                        print bs
        else putStrLn "invalid command"
    executionLoop n ns ss bs True

main = executionLoop 0 [] (-1,-1) (-1,-1) False
