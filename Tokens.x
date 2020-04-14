{ 
module Tokens where 
}

%wrapper "posn" 
$digit = 0-9
-- digits      
$alpha = [a-zA-Z]    
-- alphabetic characters

tokens :-
$white+       ; 
  "--".*      ;
  Bool           { tok (\p s -> TokenTypeBool p)} 
  if             { tok (\p s -> TokenIf p) }
  then           { tok (\p s -> TokenThen p) }
  else           { tok (\p s -> TokenElse p) }
  \=             { tok (\p s -> TokenEq p) }
  \+             { tok (\p s -> TokenPlus p) }
  \-             { tok (\p s -> TokenMinus p) }
  \*             { tok (\p s -> TokenTimes p) }
  \/             { tok (\p s -> TokenDiv p) }
  $digit+        { tok (\p s -> TokenInt p (read s)) } 
  $alpha [$alpha $digit \_ \’]*   { tok (\p s -> TokenVar p s) } 
  
{
-- need to add tokens to control stream processing

-- Helper function
tok f p s = f p s

data Token =  
  TokenBool AlexPosn Bool  |
  TokenInt AlexPosn Int    |
  TokenVar AlexPosn String | 
  TokenEq  AlexPosn        |
  TokenPlus AlexPosn       |
  TokenMinus AlexPosn      |
  TokenTimes AlexPosn      |
  TokenDiv AlexPosn        |
  TokenIf AlexPosn         |
  TokenThen AlexPosn       |
  TokenElse AlexPosn 
    deriving (Eq, Show)


tokenPosn :: Token -> String  
tokenPosn (TokenBool (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInt  (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVar (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEq  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPlus  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMinus  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTimes  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDiv (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIf (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenThen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenElse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

}