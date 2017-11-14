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

type Pos = (Int, Int)
type Board = [Pos]

createRow :: Int -> String
createRow 0 = []
createRow n = '.' : ' ' : createRow (n-1)

-- Create a row of length n with an X at position m
createRowWithCell :: Int -> Int -> String
createRowWithCell 0 _ = []
createRowWithCell n m | n == m = ' ' : 'X' : createRowWithCell (n-1) m
                      | otherwise = ' ' : '.' : createRowWithCell (n-1) m



isPoint :: [Int] -> [[Int]] -> Bool
isPoint _ []      = False
isPoint ns (m:ms) | ns == m = True
                    | otherwise = isPoint ns ms
{-
createBoardWithCells :: Int -> Int -> [[Int]] -> [String]
createBoardWithCells 0 _ [] = []
createBoardWithCells _ 0 [] = []
createBoardWithCells x y ns |
-}

--create a board with length x, height y, with a cell at position n m
-- CHANGE to use list of points

createBoardWithCell :: Int -> Int -> Int -> Int -> [String]
createBoardWithCell _ 0 _ _ = []
createBoardWithCell 0 _ _ _ = []
createBoardWithCell x y n m | y == (x-m) + 1 = reverse (createRowWithCell x n) : createBoardWithCell x (y-1) n m
                            | otherwise = createRow x : createBoardWithCell x (y-1) n m

createBoard :: Int -> Int -> [String]
createBoard _ 0 = []
createBoard 0 _ = []
createBoard n m = createRow n : createBoard n (m-1)

createWithCell :: Int -> Int -> Int -> IO ()
createWithCell x y z = mapM_ putStrLn (createBoardWithCell x x y z)

create :: Int -> IO ()
create n = mapM_ putStrLn (createBoard n n)

newCell :: Int -> Int -> IO ()
newCell x y = putChar 'x'

execute :: String -> [Int] -> IO ()
execute xs n | xs == "c" = create (head n)
             | xs == "n" = createWithCell (head n) (head n) (head n)
             | otherwise = putStrLn "something went wrong"

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
                createWithCell n (head (formatArguments(tail(splitInput input)))) (formatArguments(tail(splitInput input)) !! 1)
                executionLoop n (formatArguments(tail(splitInput input)) : ns) True
    else putStrLn "invalid command"
    executionLoop n ns True

main = executionLoop 0 [[]] False
