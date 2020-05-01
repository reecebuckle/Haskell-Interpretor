{-# OPTIONS_GHC -w #-}
module SPLGrammar where 
import SPLTokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 (Exp)

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,71) ([8128,57385,5263,8,0,240,0,0,0,0,0,0,8,8192,61440,2631,9208,64517,657,16384,128,32768,21055,8128,41,3008,0,0,244,37372,2,2,42111,16256,49234,10527,36832,20,0,0,0,96,12288,32512,164,0,8128,41,0,57344,5,240,0,0,60,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exps","Exp","nl","int","true","false","string","var","varName","if","else","'='","'+'","'-'","'*'","'/'","'('","')'","print","%eof"]
        bit_start = st * 23
        bit_end = (st + 1) * 23
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..22]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (7) = happyShift action_4
action_0 (8) = happyShift action_5
action_0 (9) = happyShift action_6
action_0 (10) = happyShift action_7
action_0 (11) = happyShift action_8
action_0 (12) = happyShift action_9
action_0 (13) = happyShift action_10
action_0 (17) = happyShift action_11
action_0 (20) = happyShift action_12
action_0 (22) = happyShift action_13
action_0 (4) = happyGoto action_14
action_0 (5) = happyGoto action_3
action_0 _ = happyReduce_4

action_1 (7) = happyShift action_4
action_1 (8) = happyShift action_5
action_1 (9) = happyShift action_6
action_1 (10) = happyShift action_7
action_1 (11) = happyShift action_8
action_1 (12) = happyShift action_9
action_1 (13) = happyShift action_10
action_1 (17) = happyShift action_11
action_1 (20) = happyShift action_12
action_1 (22) = happyShift action_13
action_1 (4) = happyGoto action_2
action_1 (5) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (6) = happyShift action_15
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (16) = happyShift action_22
action_3 (17) = happyShift action_23
action_3 (18) = happyShift action_24
action_3 (19) = happyShift action_25
action_3 _ = happyReduce_3

action_4 _ = happyReduce_11

action_5 _ = happyReduce_12

action_6 _ = happyReduce_13

action_7 _ = happyReduce_14

action_8 (12) = happyShift action_21
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (15) = happyShift action_20
action_9 _ = happyReduce_16

action_10 (7) = happyShift action_4
action_10 (8) = happyShift action_5
action_10 (9) = happyShift action_6
action_10 (10) = happyShift action_7
action_10 (11) = happyShift action_8
action_10 (12) = happyShift action_9
action_10 (13) = happyShift action_10
action_10 (17) = happyShift action_11
action_10 (20) = happyShift action_12
action_10 (22) = happyShift action_13
action_10 (5) = happyGoto action_19
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (7) = happyShift action_4
action_11 (8) = happyShift action_5
action_11 (9) = happyShift action_6
action_11 (10) = happyShift action_7
action_11 (11) = happyShift action_8
action_11 (12) = happyShift action_9
action_11 (13) = happyShift action_10
action_11 (17) = happyShift action_11
action_11 (20) = happyShift action_12
action_11 (22) = happyShift action_13
action_11 (5) = happyGoto action_18
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (7) = happyShift action_4
action_12 (8) = happyShift action_5
action_12 (9) = happyShift action_6
action_12 (10) = happyShift action_7
action_12 (11) = happyShift action_8
action_12 (12) = happyShift action_9
action_12 (13) = happyShift action_10
action_12 (17) = happyShift action_11
action_12 (20) = happyShift action_12
action_12 (22) = happyShift action_13
action_12 (5) = happyGoto action_17
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (20) = happyShift action_16
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (6) = happyShift action_15
action_14 (23) = happyAccept
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (7) = happyShift action_4
action_15 (8) = happyShift action_5
action_15 (9) = happyShift action_6
action_15 (10) = happyShift action_7
action_15 (11) = happyShift action_8
action_15 (12) = happyShift action_9
action_15 (13) = happyShift action_10
action_15 (17) = happyShift action_11
action_15 (20) = happyShift action_12
action_15 (22) = happyShift action_13
action_15 (5) = happyGoto action_35
action_15 _ = happyReduce_2

action_16 (7) = happyShift action_4
action_16 (8) = happyShift action_5
action_16 (9) = happyShift action_6
action_16 (10) = happyShift action_7
action_16 (11) = happyShift action_8
action_16 (12) = happyShift action_9
action_16 (13) = happyShift action_10
action_16 (17) = happyShift action_11
action_16 (20) = happyShift action_12
action_16 (22) = happyShift action_13
action_16 (5) = happyGoto action_34
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (16) = happyShift action_22
action_17 (17) = happyShift action_23
action_17 (18) = happyShift action_24
action_17 (19) = happyShift action_25
action_17 (21) = happyShift action_33
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_10

action_19 (14) = happyShift action_32
action_19 (16) = happyShift action_22
action_19 (17) = happyShift action_23
action_19 (18) = happyShift action_24
action_19 (19) = happyShift action_25
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (7) = happyShift action_4
action_20 (8) = happyShift action_5
action_20 (9) = happyShift action_6
action_20 (10) = happyShift action_7
action_20 (11) = happyShift action_8
action_20 (12) = happyShift action_9
action_20 (13) = happyShift action_10
action_20 (17) = happyShift action_11
action_20 (20) = happyShift action_12
action_20 (22) = happyShift action_13
action_20 (5) = happyGoto action_31
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (15) = happyShift action_30
action_21 _ = happyReduce_17

action_22 (7) = happyShift action_4
action_22 (8) = happyShift action_5
action_22 (9) = happyShift action_6
action_22 (10) = happyShift action_7
action_22 (11) = happyShift action_8
action_22 (12) = happyShift action_9
action_22 (13) = happyShift action_10
action_22 (17) = happyShift action_11
action_22 (20) = happyShift action_12
action_22 (22) = happyShift action_13
action_22 (5) = happyGoto action_29
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (7) = happyShift action_4
action_23 (8) = happyShift action_5
action_23 (9) = happyShift action_6
action_23 (10) = happyShift action_7
action_23 (11) = happyShift action_8
action_23 (12) = happyShift action_9
action_23 (13) = happyShift action_10
action_23 (17) = happyShift action_11
action_23 (20) = happyShift action_12
action_23 (22) = happyShift action_13
action_23 (5) = happyGoto action_28
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (7) = happyShift action_4
action_24 (8) = happyShift action_5
action_24 (9) = happyShift action_6
action_24 (10) = happyShift action_7
action_24 (11) = happyShift action_8
action_24 (12) = happyShift action_9
action_24 (13) = happyShift action_10
action_24 (17) = happyShift action_11
action_24 (20) = happyShift action_12
action_24 (22) = happyShift action_13
action_24 (5) = happyGoto action_27
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (7) = happyShift action_4
action_25 (8) = happyShift action_5
action_25 (9) = happyShift action_6
action_25 (10) = happyShift action_7
action_25 (11) = happyShift action_8
action_25 (12) = happyShift action_9
action_25 (13) = happyShift action_10
action_25 (17) = happyShift action_11
action_25 (20) = happyShift action_12
action_25 (22) = happyShift action_13
action_25 (5) = happyGoto action_26
action_25 _ = happyFail (happyExpListPerState 25)

action_26 _ = happyReduce_8

action_27 _ = happyReduce_7

action_28 (18) = happyShift action_24
action_28 (19) = happyShift action_25
action_28 _ = happyReduce_6

action_29 (18) = happyShift action_24
action_29 (19) = happyShift action_25
action_29 _ = happyReduce_5

action_30 (7) = happyShift action_4
action_30 (8) = happyShift action_5
action_30 (9) = happyShift action_6
action_30 (10) = happyShift action_7
action_30 (11) = happyShift action_8
action_30 (12) = happyShift action_9
action_30 (13) = happyShift action_10
action_30 (17) = happyShift action_11
action_30 (20) = happyShift action_12
action_30 (22) = happyShift action_13
action_30 (5) = happyGoto action_38
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (16) = happyShift action_22
action_31 (17) = happyShift action_23
action_31 (18) = happyShift action_24
action_31 (19) = happyShift action_25
action_31 _ = happyReduce_18

action_32 (7) = happyShift action_4
action_32 (8) = happyShift action_5
action_32 (9) = happyShift action_6
action_32 (10) = happyShift action_7
action_32 (11) = happyShift action_8
action_32 (12) = happyShift action_9
action_32 (13) = happyShift action_10
action_32 (17) = happyShift action_11
action_32 (20) = happyShift action_12
action_32 (22) = happyShift action_13
action_32 (5) = happyGoto action_37
action_32 _ = happyFail (happyExpListPerState 32)

action_33 _ = happyReduce_9

action_34 (16) = happyShift action_22
action_34 (17) = happyShift action_23
action_34 (18) = happyShift action_24
action_34 (19) = happyShift action_25
action_34 (21) = happyShift action_36
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (16) = happyShift action_22
action_35 (17) = happyShift action_23
action_35 (18) = happyShift action_24
action_35 (19) = happyShift action_25
action_35 _ = happyReduce_1

action_36 _ = happyReduce_15

action_37 (16) = happyShift action_22
action_37 (17) = happyShift action_23
action_37 (18) = happyShift action_24
action_37 (19) = happyShift action_25
action_37 _ = happyReduce_20

action_38 (16) = happyShift action_22
action_38 (17) = happyShift action_23
action_38 (18) = happyShift action_24
action_38 (19) = happyShift action_25
action_38 _ = happyReduce_19

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_3 : happy_var_1
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 _
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 ([happy_var_1]
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_0  4 happyReduction_4
happyReduction_4  =  HappyAbsSyn4
		 ([]
	)

happyReduce_5 = happySpecReduce_3  5 happyReduction_5
happyReduction_5 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  5 happyReduction_6
happyReduction_6 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  5 happyReduction_7
happyReduction_7 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Times happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  5 happyReduction_8
happyReduction_8 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Div happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  5 happyReduction_9
happyReduction_9 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  5 happyReduction_10
happyReduction_10 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Negate happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  5 happyReduction_11
happyReduction_11 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn5
		 (Int happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  5 happyReduction_12
happyReduction_12 (HappyTerminal (TokenBool _ happy_var_1))
	 =  HappyAbsSyn5
		 (Bool happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  5 happyReduction_13
happyReduction_13 (HappyTerminal (TokenBool _ happy_var_1))
	 =  HappyAbsSyn5
		 (Bool happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  5 happyReduction_14
happyReduction_14 (HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn5
		 (String happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happyReduce 4 5 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Print happy_var_3
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_1  5 happyReduction_16
happyReduction_16 (HappyTerminal (TokenName _ happy_var_1))
	 =  HappyAbsSyn5
		 (Lookup happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  5 happyReduction_17
happyReduction_17 (HappyTerminal (TokenName _ happy_var_2))
	_
	 =  HappyAbsSyn5
		 (Declare happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  5 happyReduction_18
happyReduction_18 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenName _ happy_var_1))
	 =  HappyAbsSyn5
		 (Assign happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happyReduce 4 5 happyReduction_19
happyReduction_19 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (DeclareWithVal happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 4 5 happyReduction_20
happyReduction_20 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (IfElse happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 23 23 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNewLine _ -> cont 6;
	TokenInt _ happy_dollar_dollar -> cont 7;
	TokenBool _ happy_dollar_dollar -> cont 8;
	TokenBool _ happy_dollar_dollar -> cont 9;
	TokenString _ happy_dollar_dollar -> cont 10;
	TokenVar _ -> cont 11;
	TokenName _ happy_dollar_dollar -> cont 12;
	TokenIf _ -> cont 13;
	TokenElse _ -> cont 14;
	TokenEq _ -> cont 15;
	TokenPlus _ -> cont 16;
	TokenMinus _ -> cont 17;
	TokenTimes _ -> cont 18;
	TokenDiv _ -> cont 19;
	TokenLParen _ -> cont 20;
	TokenRParen _ -> cont 21;
	TokenPrint _ -> cont 22;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 23 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data Type = TyBool Bool  | TyInt Int | TyString String | Empty

data Exp = Let String Exp Exp 
        | Plus Exp Exp 
        | Minus Exp Exp 
        | Times Exp Exp 
        | Div Exp Exp 
        | Expo Exp Exp
        | Negate Exp
        | IfElse Exp Exp
        | Int Int 
        | Bool Bool
        | String String
        | Declare String 
        | DeclareWithVal String Exp
        | Assign String Exp
        | Print Exp
        | Type
        | Lookup String
         deriving Show
{-# LINE 1 "templates\GenericTemplate.hs" #-}
{-# LINE 1 "templates\\\\GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "D:/GitHub/haskell-platform/build/ghc-bindist/local/lib/include/ghcversion.h" #-}















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "F:/Users/randy/AppData/Local/Temp/ghc1900_0/ghc_2.h" #-}


























































































































































































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates\\\\GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates\\\\GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 75 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 84 "templates\\\\GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 147 "templates\\\\GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates\\\\GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates\\\\GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
