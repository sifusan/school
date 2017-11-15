import System.IO;
import Data.Char;
import Data.List.Split
import Data.List
import System.Exit;

commands :: [String]
commands = ["c", "help", "q", "n"]

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


-- l is width and height of board, x and y represents current position
-- call with x and y at zero!!
-- sort [[Int]] before doing anything!
funkyShit :: Int -> Int -> Int -> [[Int]] -> String
funkyShit l x y [[]]     | y == l && x == l = '.' : "\n"
                         | x == l && y /= l = '.' : '\n' : funkyShit l 1 (y+1) [[]]
                         | otherwise = '.' : ' ' : funkyShit l (x+1) y [[]]

funkyShit l x y []       | y == l && x == l = '.' : "\n"
                         | x == l && y /= l = '.' : '\n' : funkyShit l 1 (y+1) []
                         | otherwise = '.' : ' ' : funkyShit l (x+1) y []

funkyShit l x y (ns:nss) | x == l && y == l               = "X\n"
                         | (x == x1 && y == y1) && x /= l = 'X' : ' '  : funkyShit l (x+1) y nss
                         | (x == x1 && y == y1) && x == l = 'X' : '\n' : funkyShit l 1 (y+1) nss
                         | (x /= x1 || y /= y1) && x == l = '.' : '\n' : funkyShit l 1 (y+1) (ns:nss)
                         | x /= x1 || y /= y1             = '.' : ' '  : funkyShit l (x+1) y (ns:nss)
                         | otherwise = error "Something really strange happened"
                         where
                             x1 = head ns
                             y1 = head (tail ns)


createWithCells :: Int -> [[Int]] -> IO ()
createWithCells n cells = putStr (funkyShit n 1 1 (rmdups(filterEmpty(sortbyYvalue cells))))

create :: Int -> IO ()
create n = putStr (funkyShit n 1 1 [])

cls :: IO ()
cls = putStr "\ESC[2J"

--use first paramater to save height and width of board
--use second parameter to save list of cells
--bool is flag to determine if the loop is running for the first time
executionLoop :: Int -> [[Int]] -> Bool -> IO ()
--executionLoop _ [] _  = exitFailure
executionLoop n ns False = do
    putStrLn "enter a command"
    input <- getLine
    if isCommand (head (splitInput input)) commands then
        if head input == 'q' then
            exitSuccess
        else
            case head input of
                'c' -> create (head (formatArguments (tail(splitInput input))))
                'n' -> do
                    putStrLn "No board created yet"
                    executionLoop 0 ns False
    else putStrLn "invalid command"
    executionLoop (head(formatArguments(tail(splitInput input)))) ns True

executionLoop n ns True = do
    putStrLn "enter a command"
    input <- getLine
    if isCommand (head(splitInput input)) commands then
        case head input of
            'q' -> exitSuccess
            'c' -> do
                create (head (formatArguments(tail(splitInput input))))
                executionLoop (head (formatArguments(tail(splitInput input)))) ns True
            'n' -> do

                createWithCells n ([[head (formatArguments(tail(splitInput input))), formatArguments(tail (splitInput input)) !! 1]] ++ ns)
                executionLoop n (formatArguments(tail(splitInput input)) : ns) True
    else putStrLn "invalid command"
    executionLoop n ns True

main = executionLoop 0 [[]] False
