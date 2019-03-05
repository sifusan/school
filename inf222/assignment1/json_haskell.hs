data JSONValue
           = Object String JSONValue
           | Array [JSONValue]
           | Stringval String
           | Numval Int
           | TRUE
           | FALSE
           | NULL
           deriving (Show,Eq)

a = Array [TRUE, Numval 2, NULL, Array [Stringval "TEST", Numval 9091]]
b = Object "ObjectName" a
c = Numval 2
toString :: JSONValue -> String
toString (Object s j) = "\""++s++"\"" ++ " " ++  toString j  
toString TRUE = "TRUE"
toString FALSE = "FALSE"
toString (Stringval s) = s
toString NULL = "NULL"
toString (Numval n) = show(n::Int) 
toString (Array js) ="Array: " ++  (show [toString j | j <- js])
--toString (Array (j:js)) = "Array: " ++ toString j



pp :: JSONValue -> String
pp (Object s j) = "{\n\t" ++ s ++  pp j
pp (Array js) = "[" ++ [pp j | j <- js] ++ "]"
pp TRUE = "TRUE"
pp FALSE = "FALSE"
pp (Numval n) = show(n::Int)
pp NULL = "NULL"
pp (Stringval s) = s
