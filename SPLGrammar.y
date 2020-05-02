{ 
module SPLGrammar where 
import SPLTokens 
}

%name parseCalc 
%tokentype { Token } 
%error { parseError }
%token 
    nl          { TokenNewLine _}
    int         { TokenInt _ $$ }
    true        { TokenBool _ $$}
    false       { TokenBool _ $$}
    string      { TokenString _ $$}
    var         { TokenVar _ }
    varName     { TokenName _ $$ }
    '='         { TokenEq _ }
    '=='        { TokenIsEq _} 
    '+'         { TokenPlus _ } 
    '-'         { TokenMinus _ } 
    '*'         { TokenTimes _ } 
    '/'         { TokenDiv _ } 
    '('         { TokenLParen _ } 
    ')'         { TokenRParen _ } 
    '{'         { TokenLCurly _ }
    '}'         { TokenRCurly _ }
    print       { TokenPrint _}
    readLine    { TokenReadLine _}
    if          { TokenIf _ }
    else        { TokenElse _ }

    %left '=='
    %left '+' '-' 
    %left '*' '/' 
    %left nl
    %right var
    %nonassoc int string true false var '(' ')'
    %nonassoc print readLine
    %nonassoc if else
%% 



Exps : Exps nl Exp      { $3 : $1 }
      | Exps nl         { $1 }
      | Exp             { [$1] }
      | {- empty -}		{ [] }


Exp :: {Exp}
Exp : Exp '+' Exp                           { Plus $1 $3 } 
    | Exp '-' Exp                           { Minus $1 $3 } 
    | Exp '*' Exp                           { Times $1 $3 } 
    | Exp '/' Exp                           { Div $1 $3 } 
    | Exp '==' Exp                          { IsEq $1 $3}
    | '(' Exp ')'                           { $2 } 
    | '{' Exp '}'                           { $2 } 
    | int                                   { Type (Int $1) }
    | int int                               { Plus (Type (Int $1)) (Type (Int $2))}
    | true                                  { Type (Bool $1)}
    | false                                 { Type (Bool $1)} 
    | string                                { Type (String $1)}
    | print '(' Exp ')'                     { Print $3 }
    | varName                               { Lookup $1 }
    | var varName                           { Declare $2}
    | varName '=' Exp                       { Assign $1 $3}
    | var varName '=' Exp                   { DeclareWithVal $2 $4}
    | readLine                              { ReadLine }
    | if '(' Exp ')' '{' Exp '}' else '{' Exp '}' { IfElse $3 [$6] [$10]} 

{ 

parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data Type = Bool Bool  | Int Int | String String | Empty
    deriving (Eq, Show)

data Exp = Type Type
        | Plus Exp Exp 
        | Minus Exp Exp 
        | Times Exp Exp 
        | Div Exp Exp 
        | IsEq Exp Exp
        | Declare String 
        | DeclareWithVal String Exp
        | Assign String Exp
        | Print Exp
        | Lookup String
        | ReadLine
        | IfElse Exp [Exp] [Exp]
    
         deriving Show 
}