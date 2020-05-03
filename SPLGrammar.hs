{-# OPTIONS_GHC -w #-}
module SPLGrammar where 
import SPLTokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 (Exp)

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,375) ([15936,10304,92,16446,23592,32832,2047,0,0,0,0,0,0,0,0,8192,0,0,65,128,15872,10304,92,16446,23592,15872,10304,92,0,8,0,0,0,0,8,0,2048,0,0,0,48704,12287,16476,16446,23592,0,0,0,0,0,15936,10304,92,16446,23592,15872,10304,92,16446,23592,15872,10304,92,16446,23592,15872,10304,92,16446,23592,32256,10304,92,16446,23592,15872,10304,92,16446,23592,15872,10304,92,16446,23592,15872,10304,92,16446,23720,32768,18431,0,65408,23,0,0,0,0,512,15872,43072,92,2,0,16448,32768,0,0,0,15936,10304,92,64,0,15872,10304,92,0,0,0,0,0,16446,23720,0,0,1,0,256,32832,2047,0,14,0,0,2048,0,0,0,0,0,0,65408,23,3584,0,0,65408,23,32768,6143,0,31744,0,0,124,0,31744,6,0,1660,0,16384,0,0,64,0,16384,0,0,64,0,64512,7,0,2044,0,64512,7,0,0,0,0,32,0,8192,0,0,256,128,0,32768,0,0,128,0,16384,0,0,0,4096,0,0,256,0,0,0,0,0,64,0,16384,65408,7,3584,0,0,0,0,0,0,1,0,0,0,0,16384,0,0,0,0,0,0,0,3584,0,0,14,0,3584,0,0,0,16,15936,10304,16476,16446,23592,0,16384,0,0,64,64,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,32,0,0,0,8192,16384,16446,23592,0,16384,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exps","ValList","Exp","nl","','","'.'","int","bool","string","var","varName","'='","'=='","and","or","'<'","'>'","'<='","'>='","not","'+'","'-'","'*'","'/'","'('","')'","'{'","'}'","'['","']'","length","print","readLine","if","else","while","%eof"]
        bit_start = st * 40
        bit_end = (st + 1) * 40
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..39]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (7) = happyShift action_17
action_0 (10) = happyShift action_3
action_0 (11) = happyShift action_4
action_0 (12) = happyShift action_5
action_0 (13) = happyShift action_6
action_0 (14) = happyShift action_7
action_0 (23) = happyShift action_8
action_0 (28) = happyShift action_9
action_0 (30) = happyShift action_10
action_0 (35) = happyShift action_11
action_0 (36) = happyShift action_12
action_0 (37) = happyShift action_13
action_0 (39) = happyShift action_14
action_0 (4) = happyGoto action_15
action_0 (6) = happyGoto action_16
action_0 _ = happyReduce_5

action_1 (10) = happyShift action_3
action_1 (11) = happyShift action_4
action_1 (12) = happyShift action_5
action_1 (13) = happyShift action_6
action_1 (14) = happyShift action_7
action_1 (23) = happyShift action_8
action_1 (28) = happyShift action_9
action_1 (30) = happyShift action_10
action_1 (35) = happyShift action_11
action_1 (36) = happyShift action_12
action_1 (37) = happyShift action_13
action_1 (39) = happyShift action_14
action_1 (6) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (7) = happyShift action_44
action_2 (16) = happyShift action_21
action_2 (17) = happyShift action_22
action_2 (18) = happyShift action_23
action_2 (19) = happyShift action_24
action_2 (20) = happyShift action_25
action_2 (21) = happyShift action_26
action_2 (22) = happyShift action_27
action_2 (23) = happyShift action_45
action_2 (24) = happyShift action_29
action_2 (25) = happyShift action_30
action_2 (26) = happyShift action_31
action_2 (27) = happyShift action_32
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (10) = happyFail []
action_3 _ = happyReduce_28

action_4 _ = happyReduce_30

action_5 _ = happyReduce_31

action_6 (14) = happyShift action_42
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (9) = happyShift action_39
action_7 (15) = happyShift action_40
action_7 (32) = happyShift action_41
action_7 _ = happyReduce_34

action_8 (10) = happyShift action_3
action_8 (11) = happyShift action_4
action_8 (12) = happyShift action_5
action_8 (13) = happyShift action_6
action_8 (14) = happyShift action_7
action_8 (23) = happyShift action_8
action_8 (28) = happyShift action_9
action_8 (30) = happyShift action_10
action_8 (35) = happyShift action_11
action_8 (36) = happyShift action_12
action_8 (37) = happyShift action_13
action_8 (39) = happyShift action_14
action_8 (6) = happyGoto action_38
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (10) = happyShift action_3
action_9 (11) = happyShift action_4
action_9 (12) = happyShift action_5
action_9 (13) = happyShift action_6
action_9 (14) = happyShift action_7
action_9 (23) = happyShift action_8
action_9 (28) = happyShift action_9
action_9 (30) = happyShift action_10
action_9 (35) = happyShift action_11
action_9 (36) = happyShift action_12
action_9 (37) = happyShift action_13
action_9 (39) = happyShift action_14
action_9 (6) = happyGoto action_37
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (10) = happyShift action_3
action_10 (11) = happyShift action_4
action_10 (12) = happyShift action_5
action_10 (13) = happyShift action_6
action_10 (14) = happyShift action_7
action_10 (23) = happyShift action_8
action_10 (28) = happyShift action_9
action_10 (30) = happyShift action_10
action_10 (35) = happyShift action_11
action_10 (36) = happyShift action_12
action_10 (37) = happyShift action_13
action_10 (39) = happyShift action_14
action_10 (6) = happyGoto action_36
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (28) = happyShift action_35
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_43

action_13 (28) = happyShift action_34
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (28) = happyShift action_33
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (40) = happyAccept
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (7) = happyShift action_20
action_16 (10) = happyShift action_3
action_16 (11) = happyShift action_4
action_16 (12) = happyShift action_5
action_16 (13) = happyShift action_6
action_16 (14) = happyShift action_7
action_16 (16) = happyShift action_21
action_16 (17) = happyShift action_22
action_16 (18) = happyShift action_23
action_16 (19) = happyShift action_24
action_16 (20) = happyShift action_25
action_16 (21) = happyShift action_26
action_16 (22) = happyShift action_27
action_16 (23) = happyShift action_28
action_16 (24) = happyShift action_29
action_16 (25) = happyShift action_30
action_16 (26) = happyShift action_31
action_16 (27) = happyShift action_32
action_16 (28) = happyShift action_9
action_16 (30) = happyShift action_10
action_16 (31) = happyReduce_5
action_16 (35) = happyShift action_11
action_16 (36) = happyShift action_12
action_16 (37) = happyShift action_13
action_16 (39) = happyShift action_14
action_16 (40) = happyReduce_5
action_16 (4) = happyGoto action_19
action_16 (6) = happyGoto action_16
action_16 _ = happyReduce_5

action_17 (7) = happyShift action_17
action_17 (10) = happyShift action_3
action_17 (11) = happyShift action_4
action_17 (12) = happyShift action_5
action_17 (13) = happyShift action_6
action_17 (14) = happyShift action_7
action_17 (23) = happyShift action_8
action_17 (28) = happyShift action_9
action_17 (30) = happyShift action_10
action_17 (35) = happyShift action_11
action_17 (36) = happyShift action_12
action_17 (37) = happyShift action_13
action_17 (39) = happyShift action_14
action_17 (4) = happyGoto action_18
action_17 (6) = happyGoto action_16
action_17 _ = happyReduce_5

action_18 _ = happyReduce_2

action_19 _ = happyReduce_3

action_20 (7) = happyShift action_17
action_20 (10) = happyShift action_3
action_20 (11) = happyShift action_4
action_20 (12) = happyShift action_5
action_20 (13) = happyShift action_6
action_20 (14) = happyShift action_7
action_20 (23) = happyShift action_8
action_20 (28) = happyShift action_9
action_20 (30) = happyShift action_10
action_20 (35) = happyShift action_11
action_20 (36) = happyShift action_12
action_20 (37) = happyShift action_13
action_20 (39) = happyShift action_14
action_20 (4) = happyGoto action_72
action_20 (6) = happyGoto action_16
action_20 _ = happyReduce_5

action_21 (10) = happyShift action_3
action_21 (11) = happyShift action_4
action_21 (12) = happyShift action_5
action_21 (13) = happyShift action_6
action_21 (14) = happyShift action_7
action_21 (23) = happyShift action_8
action_21 (28) = happyShift action_9
action_21 (30) = happyShift action_10
action_21 (35) = happyShift action_11
action_21 (36) = happyShift action_12
action_21 (37) = happyShift action_13
action_21 (39) = happyShift action_14
action_21 (6) = happyGoto action_71
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (10) = happyShift action_3
action_22 (11) = happyShift action_4
action_22 (12) = happyShift action_5
action_22 (13) = happyShift action_6
action_22 (14) = happyShift action_7
action_22 (23) = happyShift action_8
action_22 (28) = happyShift action_9
action_22 (30) = happyShift action_10
action_22 (35) = happyShift action_11
action_22 (36) = happyShift action_12
action_22 (37) = happyShift action_13
action_22 (39) = happyShift action_14
action_22 (6) = happyGoto action_70
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (10) = happyShift action_3
action_23 (11) = happyShift action_4
action_23 (12) = happyShift action_5
action_23 (13) = happyShift action_6
action_23 (14) = happyShift action_7
action_23 (23) = happyShift action_8
action_23 (28) = happyShift action_9
action_23 (30) = happyShift action_10
action_23 (35) = happyShift action_11
action_23 (36) = happyShift action_12
action_23 (37) = happyShift action_13
action_23 (39) = happyShift action_14
action_23 (6) = happyGoto action_69
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (10) = happyShift action_3
action_24 (11) = happyShift action_4
action_24 (12) = happyShift action_5
action_24 (13) = happyShift action_6
action_24 (14) = happyShift action_7
action_24 (23) = happyShift action_8
action_24 (28) = happyShift action_9
action_24 (30) = happyShift action_10
action_24 (35) = happyShift action_11
action_24 (36) = happyShift action_12
action_24 (37) = happyShift action_13
action_24 (39) = happyShift action_14
action_24 (6) = happyGoto action_68
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (10) = happyShift action_3
action_25 (11) = happyShift action_4
action_25 (12) = happyShift action_5
action_25 (13) = happyShift action_6
action_25 (14) = happyShift action_7
action_25 (23) = happyShift action_8
action_25 (28) = happyShift action_9
action_25 (30) = happyShift action_10
action_25 (35) = happyShift action_11
action_25 (36) = happyShift action_12
action_25 (37) = happyShift action_13
action_25 (39) = happyShift action_14
action_25 (6) = happyGoto action_67
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (10) = happyShift action_3
action_26 (11) = happyShift action_4
action_26 (12) = happyShift action_5
action_26 (13) = happyShift action_6
action_26 (14) = happyShift action_7
action_26 (23) = happyShift action_8
action_26 (28) = happyShift action_9
action_26 (30) = happyShift action_10
action_26 (35) = happyShift action_11
action_26 (36) = happyShift action_12
action_26 (37) = happyShift action_13
action_26 (39) = happyShift action_14
action_26 (6) = happyGoto action_66
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (10) = happyShift action_3
action_27 (11) = happyShift action_4
action_27 (12) = happyShift action_5
action_27 (13) = happyShift action_6
action_27 (14) = happyShift action_7
action_27 (23) = happyShift action_8
action_27 (28) = happyShift action_9
action_27 (30) = happyShift action_10
action_27 (35) = happyShift action_11
action_27 (36) = happyShift action_12
action_27 (37) = happyShift action_13
action_27 (39) = happyShift action_14
action_27 (6) = happyGoto action_65
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (10) = happyShift action_3
action_28 (11) = happyShift action_4
action_28 (12) = happyShift action_5
action_28 (13) = happyShift action_6
action_28 (14) = happyShift action_7
action_28 (15) = happyShift action_46
action_28 (23) = happyShift action_8
action_28 (28) = happyShift action_9
action_28 (30) = happyShift action_10
action_28 (35) = happyShift action_11
action_28 (36) = happyShift action_12
action_28 (37) = happyShift action_13
action_28 (39) = happyShift action_14
action_28 (6) = happyGoto action_38
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (10) = happyShift action_3
action_29 (11) = happyShift action_4
action_29 (12) = happyShift action_5
action_29 (13) = happyShift action_6
action_29 (14) = happyShift action_7
action_29 (23) = happyShift action_8
action_29 (28) = happyShift action_9
action_29 (30) = happyShift action_10
action_29 (35) = happyShift action_11
action_29 (36) = happyShift action_12
action_29 (37) = happyShift action_13
action_29 (39) = happyShift action_14
action_29 (6) = happyGoto action_64
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (10) = happyShift action_3
action_30 (11) = happyShift action_4
action_30 (12) = happyShift action_5
action_30 (13) = happyShift action_6
action_30 (14) = happyShift action_7
action_30 (23) = happyShift action_8
action_30 (28) = happyShift action_9
action_30 (30) = happyShift action_10
action_30 (35) = happyShift action_11
action_30 (36) = happyShift action_12
action_30 (37) = happyShift action_13
action_30 (39) = happyShift action_14
action_30 (6) = happyGoto action_63
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (10) = happyShift action_3
action_31 (11) = happyShift action_4
action_31 (12) = happyShift action_5
action_31 (13) = happyShift action_6
action_31 (14) = happyShift action_7
action_31 (23) = happyShift action_8
action_31 (28) = happyShift action_9
action_31 (30) = happyShift action_10
action_31 (35) = happyShift action_11
action_31 (36) = happyShift action_12
action_31 (37) = happyShift action_13
action_31 (39) = happyShift action_14
action_31 (6) = happyGoto action_62
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (10) = happyShift action_3
action_32 (11) = happyShift action_4
action_32 (12) = happyShift action_5
action_32 (13) = happyShift action_6
action_32 (14) = happyShift action_7
action_32 (23) = happyShift action_8
action_32 (28) = happyShift action_9
action_32 (30) = happyShift action_10
action_32 (35) = happyShift action_11
action_32 (36) = happyShift action_12
action_32 (37) = happyShift action_13
action_32 (39) = happyShift action_14
action_32 (6) = happyGoto action_61
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (10) = happyShift action_3
action_33 (11) = happyShift action_4
action_33 (12) = happyShift action_5
action_33 (13) = happyShift action_6
action_33 (14) = happyShift action_7
action_33 (23) = happyShift action_8
action_33 (28) = happyShift action_9
action_33 (30) = happyShift action_10
action_33 (35) = happyShift action_11
action_33 (36) = happyShift action_12
action_33 (37) = happyShift action_13
action_33 (39) = happyShift action_14
action_33 (6) = happyGoto action_60
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (10) = happyShift action_3
action_34 (11) = happyShift action_4
action_34 (12) = happyShift action_5
action_34 (13) = happyShift action_6
action_34 (14) = happyShift action_7
action_34 (23) = happyShift action_8
action_34 (28) = happyShift action_9
action_34 (30) = happyShift action_10
action_34 (35) = happyShift action_11
action_34 (36) = happyShift action_12
action_34 (37) = happyShift action_13
action_34 (39) = happyShift action_14
action_34 (6) = happyGoto action_59
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (10) = happyShift action_3
action_35 (11) = happyShift action_4
action_35 (12) = happyShift action_5
action_35 (13) = happyShift action_6
action_35 (14) = happyShift action_7
action_35 (23) = happyShift action_8
action_35 (28) = happyShift action_9
action_35 (30) = happyShift action_10
action_35 (32) = happyShift action_58
action_35 (35) = happyShift action_11
action_35 (36) = happyShift action_12
action_35 (37) = happyShift action_13
action_35 (39) = happyShift action_14
action_35 (6) = happyGoto action_57
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (16) = happyShift action_21
action_36 (17) = happyShift action_22
action_36 (18) = happyShift action_23
action_36 (19) = happyShift action_24
action_36 (20) = happyShift action_25
action_36 (21) = happyShift action_26
action_36 (22) = happyShift action_27
action_36 (23) = happyShift action_45
action_36 (24) = happyShift action_29
action_36 (25) = happyShift action_30
action_36 (26) = happyShift action_31
action_36 (27) = happyShift action_32
action_36 (31) = happyShift action_56
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (16) = happyShift action_21
action_37 (17) = happyShift action_22
action_37 (18) = happyShift action_23
action_37 (19) = happyShift action_24
action_37 (20) = happyShift action_25
action_37 (21) = happyShift action_26
action_37 (22) = happyShift action_27
action_37 (23) = happyShift action_45
action_37 (24) = happyShift action_29
action_37 (25) = happyShift action_30
action_37 (26) = happyShift action_31
action_37 (27) = happyShift action_32
action_37 (29) = happyShift action_55
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_25

action_39 (34) = happyShift action_54
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (10) = happyShift action_3
action_40 (11) = happyShift action_4
action_40 (12) = happyShift action_5
action_40 (13) = happyShift action_6
action_40 (14) = happyShift action_7
action_40 (23) = happyShift action_8
action_40 (28) = happyShift action_9
action_40 (30) = happyShift action_10
action_40 (32) = happyShift action_53
action_40 (35) = happyShift action_11
action_40 (36) = happyShift action_12
action_40 (37) = happyShift action_13
action_40 (39) = happyShift action_14
action_40 (6) = happyGoto action_52
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (10) = happyShift action_51
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (7) = happyShift action_48
action_42 (15) = happyShift action_49
action_42 (32) = happyShift action_50
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_29

action_44 (7) = happyShift action_17
action_44 (10) = happyShift action_3
action_44 (11) = happyShift action_4
action_44 (12) = happyShift action_5
action_44 (13) = happyShift action_6
action_44 (14) = happyShift action_7
action_44 (23) = happyShift action_8
action_44 (28) = happyShift action_9
action_44 (30) = happyShift action_10
action_44 (35) = happyShift action_11
action_44 (36) = happyShift action_12
action_44 (37) = happyShift action_13
action_44 (39) = happyShift action_14
action_44 (4) = happyGoto action_47
action_44 (6) = happyGoto action_16
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (15) = happyShift action_46
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (10) = happyShift action_3
action_46 (11) = happyShift action_4
action_46 (12) = happyShift action_5
action_46 (13) = happyShift action_6
action_46 (14) = happyShift action_7
action_46 (23) = happyShift action_8
action_46 (28) = happyShift action_9
action_46 (30) = happyShift action_10
action_46 (35) = happyShift action_11
action_46 (36) = happyShift action_12
action_46 (37) = happyShift action_13
action_46 (39) = happyShift action_14
action_46 (6) = happyGoto action_87
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_36

action_49 (10) = happyShift action_3
action_49 (11) = happyShift action_4
action_49 (12) = happyShift action_5
action_49 (13) = happyShift action_6
action_49 (14) = happyShift action_7
action_49 (23) = happyShift action_8
action_49 (28) = happyShift action_9
action_49 (30) = happyShift action_10
action_49 (32) = happyShift action_86
action_49 (35) = happyShift action_11
action_49 (36) = happyShift action_12
action_49 (37) = happyShift action_13
action_49 (39) = happyShift action_14
action_49 (6) = happyGoto action_85
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (33) = happyShift action_84
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (33) = happyShift action_83
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (7) = happyShift action_82
action_52 (16) = happyShift action_21
action_52 (17) = happyShift action_22
action_52 (18) = happyShift action_23
action_52 (19) = happyShift action_24
action_52 (20) = happyShift action_25
action_52 (21) = happyShift action_26
action_52 (22) = happyShift action_27
action_52 (23) = happyShift action_45
action_52 (24) = happyShift action_29
action_52 (25) = happyShift action_30
action_52 (26) = happyShift action_31
action_52 (27) = happyShift action_32
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (10) = happyShift action_76
action_53 (11) = happyShift action_77
action_53 (12) = happyShift action_78
action_53 (5) = happyGoto action_81
action_53 _ = happyReduce_12

action_54 (28) = happyShift action_80
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_26

action_56 _ = happyReduce_27

action_57 (16) = happyShift action_21
action_57 (17) = happyShift action_22
action_57 (18) = happyShift action_23
action_57 (19) = happyShift action_24
action_57 (20) = happyShift action_25
action_57 (21) = happyShift action_26
action_57 (22) = happyShift action_27
action_57 (23) = happyShift action_45
action_57 (24) = happyShift action_29
action_57 (25) = happyShift action_30
action_57 (26) = happyShift action_31
action_57 (27) = happyShift action_32
action_57 (29) = happyShift action_79
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (10) = happyShift action_76
action_58 (11) = happyShift action_77
action_58 (12) = happyShift action_78
action_58 (5) = happyGoto action_75
action_58 _ = happyReduce_12

action_59 (16) = happyShift action_21
action_59 (17) = happyShift action_22
action_59 (18) = happyShift action_23
action_59 (19) = happyShift action_24
action_59 (20) = happyShift action_25
action_59 (21) = happyShift action_26
action_59 (22) = happyShift action_27
action_59 (23) = happyShift action_45
action_59 (24) = happyShift action_29
action_59 (25) = happyShift action_30
action_59 (26) = happyShift action_31
action_59 (27) = happyShift action_32
action_59 (29) = happyShift action_74
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (16) = happyShift action_21
action_60 (17) = happyShift action_22
action_60 (18) = happyShift action_23
action_60 (19) = happyShift action_24
action_60 (20) = happyShift action_25
action_60 (21) = happyShift action_26
action_60 (22) = happyShift action_27
action_60 (23) = happyShift action_45
action_60 (24) = happyShift action_29
action_60 (25) = happyShift action_30
action_60 (26) = happyShift action_31
action_60 (27) = happyShift action_32
action_60 (29) = happyShift action_73
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (19) = happyShift action_24
action_61 (20) = happyShift action_25
action_61 (21) = happyShift action_26
action_61 (22) = happyShift action_27
action_61 (23) = happyShift action_45
action_61 _ = happyReduce_16

action_62 (19) = happyShift action_24
action_62 (20) = happyShift action_25
action_62 (21) = happyShift action_26
action_62 (22) = happyShift action_27
action_62 (23) = happyShift action_45
action_62 _ = happyReduce_15

action_63 (19) = happyShift action_24
action_63 (20) = happyShift action_25
action_63 (21) = happyShift action_26
action_63 (22) = happyShift action_27
action_63 (23) = happyShift action_45
action_63 (26) = happyShift action_31
action_63 (27) = happyShift action_32
action_63 _ = happyReduce_14

action_64 (19) = happyShift action_24
action_64 (20) = happyShift action_25
action_64 (21) = happyShift action_26
action_64 (22) = happyShift action_27
action_64 (23) = happyShift action_45
action_64 (26) = happyShift action_31
action_64 (27) = happyShift action_32
action_64 _ = happyReduce_13

action_65 (23) = happyShift action_45
action_65 _ = happyReduce_22

action_66 (23) = happyShift action_45
action_66 _ = happyReduce_21

action_67 (23) = happyShift action_45
action_67 _ = happyReduce_20

action_68 (23) = happyShift action_45
action_68 _ = happyReduce_19

action_69 (19) = happyShift action_24
action_69 (20) = happyShift action_25
action_69 (21) = happyShift action_26
action_69 (22) = happyShift action_27
action_69 (23) = happyShift action_45
action_69 (24) = happyShift action_29
action_69 (25) = happyShift action_30
action_69 (26) = happyShift action_31
action_69 (27) = happyShift action_32
action_69 _ = happyReduce_24

action_70 (19) = happyShift action_24
action_70 (20) = happyShift action_25
action_70 (21) = happyShift action_26
action_70 (22) = happyShift action_27
action_70 (23) = happyShift action_45
action_70 (24) = happyShift action_29
action_70 (25) = happyShift action_30
action_70 (26) = happyShift action_31
action_70 (27) = happyShift action_32
action_70 _ = happyReduce_23

action_71 (19) = happyShift action_24
action_71 (20) = happyShift action_25
action_71 (21) = happyShift action_26
action_71 (22) = happyShift action_27
action_71 (23) = happyShift action_45
action_71 (24) = happyShift action_29
action_71 (25) = happyShift action_30
action_71 (26) = happyShift action_31
action_71 (27) = happyShift action_32
action_71 _ = happyReduce_17

action_72 (31) = happyReduce_1
action_72 (40) = happyReduce_1
action_72 _ = happyReduce_1

action_73 (30) = happyShift action_99
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (30) = happyShift action_98
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (33) = happyShift action_97
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (8) = happyShift action_96
action_76 _ = happyReduce_9

action_77 (8) = happyShift action_95
action_77 _ = happyReduce_11

action_78 (8) = happyShift action_94
action_78 _ = happyReduce_10

action_79 (7) = happyShift action_93
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (29) = happyShift action_92
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (33) = happyShift action_91
action_81 _ = happyFail (happyExpListPerState 81)

action_82 _ = happyReduce_39

action_83 _ = happyReduce_35

action_84 (7) = happyShift action_90
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (7) = happyShift action_89
action_85 (16) = happyShift action_21
action_85 (17) = happyShift action_22
action_85 (18) = happyShift action_23
action_85 (19) = happyShift action_24
action_85 (20) = happyShift action_25
action_85 (21) = happyShift action_26
action_85 (22) = happyShift action_27
action_85 (23) = happyShift action_45
action_85 (24) = happyShift action_29
action_85 (25) = happyShift action_30
action_85 (26) = happyShift action_31
action_85 (27) = happyShift action_32
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (10) = happyShift action_76
action_86 (11) = happyShift action_77
action_86 (12) = happyShift action_78
action_86 (5) = happyGoto action_88
action_86 _ = happyReduce_12

action_87 (16) = happyShift action_21
action_87 (17) = happyShift action_22
action_87 (18) = happyShift action_23
action_87 (19) = happyShift action_24
action_87 (20) = happyShift action_25
action_87 (21) = happyShift action_26
action_87 (22) = happyShift action_27
action_87 (23) = happyShift action_45
action_87 (24) = happyShift action_29
action_87 (25) = happyShift action_30
action_87 (26) = happyShift action_31
action_87 (27) = happyShift action_32
action_87 _ = happyReduce_18

action_88 (33) = happyShift action_107
action_88 _ = happyFail (happyExpListPerState 88)

action_89 _ = happyReduce_41

action_90 _ = happyReduce_37

action_91 (7) = happyShift action_106
action_91 _ = happyFail (happyExpListPerState 91)

action_92 _ = happyReduce_42

action_93 _ = happyReduce_32

action_94 (10) = happyShift action_76
action_94 (11) = happyShift action_77
action_94 (12) = happyShift action_78
action_94 (5) = happyGoto action_105
action_94 _ = happyReduce_12

action_95 (10) = happyShift action_76
action_95 (11) = happyShift action_77
action_95 (12) = happyShift action_78
action_95 (5) = happyGoto action_104
action_95 _ = happyReduce_12

action_96 (10) = happyShift action_76
action_96 (11) = happyShift action_77
action_96 (12) = happyShift action_78
action_96 (5) = happyGoto action_103
action_96 _ = happyReduce_12

action_97 (29) = happyShift action_102
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (7) = happyShift action_17
action_98 (10) = happyShift action_3
action_98 (11) = happyShift action_4
action_98 (12) = happyShift action_5
action_98 (13) = happyShift action_6
action_98 (14) = happyShift action_7
action_98 (23) = happyShift action_8
action_98 (28) = happyShift action_9
action_98 (30) = happyShift action_10
action_98 (35) = happyShift action_11
action_98 (36) = happyShift action_12
action_98 (37) = happyShift action_13
action_98 (39) = happyShift action_14
action_98 (4) = happyGoto action_101
action_98 (6) = happyGoto action_16
action_98 _ = happyReduce_5

action_99 (7) = happyShift action_17
action_99 (10) = happyShift action_3
action_99 (11) = happyShift action_4
action_99 (12) = happyShift action_5
action_99 (13) = happyShift action_6
action_99 (14) = happyShift action_7
action_99 (23) = happyShift action_8
action_99 (28) = happyShift action_9
action_99 (30) = happyShift action_10
action_99 (35) = happyShift action_11
action_99 (36) = happyShift action_12
action_99 (37) = happyShift action_13
action_99 (39) = happyShift action_14
action_99 (4) = happyGoto action_100
action_99 (6) = happyGoto action_16
action_99 _ = happyReduce_5

action_100 (31) = happyShift action_111
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (31) = happyShift action_110
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (7) = happyShift action_109
action_102 _ = happyFail (happyExpListPerState 102)

action_103 _ = happyReduce_6

action_104 _ = happyReduce_8

action_105 _ = happyReduce_7

action_106 _ = happyReduce_40

action_107 (7) = happyShift action_108
action_107 _ = happyFail (happyExpListPerState 107)

action_108 _ = happyReduce_38

action_109 _ = happyReduce_33

action_110 (38) = happyShift action_112
action_110 _ = happyReduce_45

action_111 _ = happyReduce_46

action_112 (30) = happyShift action_113
action_112 _ = happyFail (happyExpListPerState 112)

action_113 (7) = happyShift action_17
action_113 (10) = happyShift action_3
action_113 (11) = happyShift action_4
action_113 (12) = happyShift action_5
action_113 (13) = happyShift action_6
action_113 (14) = happyShift action_7
action_113 (23) = happyShift action_8
action_113 (28) = happyShift action_9
action_113 (30) = happyShift action_10
action_113 (35) = happyShift action_11
action_113 (36) = happyShift action_12
action_113 (37) = happyShift action_13
action_113 (39) = happyShift action_14
action_113 (4) = happyGoto action_114
action_113 (6) = happyGoto action_16
action_113 _ = happyReduce_5

action_114 (31) = happyShift action_115
action_114 _ = happyFail (happyExpListPerState 114)

action_115 _ = happyReduce_44

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1 : happy_var_3
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_2  4 happyReduction_3
happyReduction_3 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1 : happy_var_2
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn4
		 ([happy_var_1]
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_0  4 happyReduction_5
happyReduction_5  =  HappyAbsSyn4
		 ([]
	)

happyReduce_6 = happySpecReduce_3  5 happyReduction_6
happyReduction_6 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn5
		 ((Int happy_var_1) : happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  5 happyReduction_7
happyReduction_7 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn5
		 ((String happy_var_1) : happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  5 happyReduction_8
happyReduction_8 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenBool _ happy_var_1))
	 =  HappyAbsSyn5
		 ((Bool happy_var_1) : happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  5 happyReduction_9
happyReduction_9 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn5
		 ([Int happy_var_1]
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  5 happyReduction_10
happyReduction_10 (HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn5
		 ([String happy_var_1]
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  5 happyReduction_11
happyReduction_11 (HappyTerminal (TokenBool _ happy_var_1))
	 =  HappyAbsSyn5
		 ([Bool happy_var_1]
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_0  5 happyReduction_12
happyReduction_12  =  HappyAbsSyn5
		 ([]
	)

happyReduce_13 = happySpecReduce_3  6 happyReduction_13
happyReduction_13 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  6 happyReduction_14
happyReduction_14 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  6 happyReduction_15
happyReduction_15 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Times happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  6 happyReduction_16
happyReduction_16 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Div happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  6 happyReduction_17
happyReduction_17 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (IsEq happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happyReduce 4 6 happyReduction_18
happyReduction_18 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (NOT (IsEq happy_var_1 happy_var_4)
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_3  6 happyReduction_19
happyReduction_19 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (IsLess happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  6 happyReduction_20
happyReduction_20 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (IsMore happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  6 happyReduction_21
happyReduction_21 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (OR (IsLess happy_var_1 happy_var_3) (IsEq happy_var_1 happy_var_3)
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  6 happyReduction_22
happyReduction_22 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (OR (IsMore happy_var_1 happy_var_3) (IsEq happy_var_1 happy_var_3)
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  6 happyReduction_23
happyReduction_23 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (AND happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  6 happyReduction_24
happyReduction_24 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (OR happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_2  6 happyReduction_25
happyReduction_25 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (NOT happy_var_2
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  6 happyReduction_26
happyReduction_26 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  6 happyReduction_27
happyReduction_27 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  6 happyReduction_28
happyReduction_28 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn6
		 (Type (Int happy_var_1)
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_2  6 happyReduction_29
happyReduction_29 (HappyTerminal (TokenInt _ happy_var_2))
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn6
		 (Plus (Type (Int happy_var_1)) (Type (Int happy_var_2))
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  6 happyReduction_30
happyReduction_30 (HappyTerminal (TokenBool _ happy_var_1))
	 =  HappyAbsSyn6
		 (Type (Bool happy_var_1)
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  6 happyReduction_31
happyReduction_31 (HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn6
		 (Type (String happy_var_1)
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happyReduce 5 6 happyReduction_32
happyReduction_32 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Print happy_var_3
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 7 6 happyReduction_33
happyReduction_33 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Print (Type (Arr happy_var_4))
	) `HappyStk` happyRest

happyReduce_34 = happySpecReduce_1  6 happyReduction_34
happyReduction_34 (HappyTerminal (TokenName _ happy_var_1))
	 =  HappyAbsSyn6
		 (Lookup happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happyReduce 4 6 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (GetIndex happy_var_3 (Lookup happy_var_1)
	) `HappyStk` happyRest

happyReduce_36 = happySpecReduce_3  6 happyReduction_36
happyReduction_36 _
	(HappyTerminal (TokenName _ happy_var_2))
	_
	 =  HappyAbsSyn6
		 (Declare happy_var_2
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happyReduce 5 6 happyReduction_37
happyReduction_37 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Declare happy_var_2
	) `HappyStk` happyRest

happyReduce_38 = happyReduce 7 6 happyReduction_38
happyReduction_38 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (DeclareWithVal happy_var_2 (Type (Arr happy_var_5))
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 4 6 happyReduction_39
happyReduction_39 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Assign happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_40 = happyReduce 6 6 happyReduction_40
happyReduction_40 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Assign happy_var_1 (Type (Arr happy_var_4))
	) `HappyStk` happyRest

happyReduce_41 = happyReduce 5 6 happyReduction_41
happyReduction_41 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (DeclareWithVal happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_42 = happyReduce 5 6 happyReduction_42
happyReduction_42 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Length (Lookup happy_var_1)
	) `HappyStk` happyRest

happyReduce_43 = happySpecReduce_1  6 happyReduction_43
happyReduction_43 _
	 =  HappyAbsSyn6
		 (ReadLine
	)

happyReduce_44 = happyReduce 11 6 happyReduction_44
happyReduction_44 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (IfElse happy_var_3 happy_var_6 happy_var_10
	) `HappyStk` happyRest

happyReduce_45 = happyReduce 7 6 happyReduction_45
happyReduction_45 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (IfElse happy_var_3 happy_var_6 []
	) `HappyStk` happyRest

happyReduce_46 = happyReduce 7 6 happyReduction_46
happyReduction_46 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (While happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 40 40 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNewLine _ -> cont 7;
	TokenComma _ -> cont 8;
	TokenDot _ -> cont 9;
	TokenInt _ happy_dollar_dollar -> cont 10;
	TokenBool _ happy_dollar_dollar -> cont 11;
	TokenString _ happy_dollar_dollar -> cont 12;
	TokenVar _ -> cont 13;
	TokenName _ happy_dollar_dollar -> cont 14;
	TokenEq _ -> cont 15;
	TokenIsEq _ -> cont 16;
	TokenAND _ -> cont 17;
	TokenOR _ -> cont 18;
	TokenLess _ -> cont 19;
	TokenMore _ -> cont 20;
	TokenLessEq _ -> cont 21;
	TokenMoreEq _ -> cont 22;
	TokenNOT _ -> cont 23;
	TokenPlus _ -> cont 24;
	TokenMinus _ -> cont 25;
	TokenTimes _ -> cont 26;
	TokenDiv _ -> cont 27;
	TokenLParen _ -> cont 28;
	TokenRParen _ -> cont 29;
	TokenLCurly _ -> cont 30;
	TokenRCurly _ -> cont 31;
	TokenLStraight _ -> cont 32;
	TokenRStraight _ -> cont 33;
	TokenLength _ -> cont 34;
	TokenPrint _ -> cont 35;
	TokenReadLine _ -> cont 36;
	TokenIf _ -> cont 37;
	TokenElse _ -> cont 38;
	TokenWhile _ -> cont 39;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 40 tk tks = happyError' (tks, explist)
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

data Type = Bool Bool  | Int Int | String String | Arr [Type] | NULL
    deriving (Eq, Show)

data Exp = Type Type

        | Plus Exp Exp 
        | Minus Exp Exp 
        | Times Exp Exp 
        | Div Exp Exp 

        | IsEq Exp Exp
        | IsLess Exp Exp
        | IsMore Exp Exp
        | MoreEq Exp Exp
        | AND Exp Exp
        | OR Exp Exp
        | NOT Exp
        
        | Declare String 
        | DeclareWithVal String Exp
        | Assign String Exp
        | Lookup String

        |GetIndex Int Exp
        |Length Exp
        
        | Print Exp
        | ReadLine
        | IfElse Exp [Exp] [Exp]

        |While Exp [Exp]
         deriving Show
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































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









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

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
