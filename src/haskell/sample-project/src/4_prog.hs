--組み込み関数としてsort関数があるのでそれのためのimport
import Data.List

{-
ifEvenInc n =   if even n
                then n+1
                else n

ifEvenDouble n = if even n
                 then n * 2
                 else n

ifEvenSquare n = if even n
                 then n^2
                 else n
-}

--関数と数値を引数に取る関数
ifEven myFunction x =   if even x
                        then myFunction x
                        else x

inc n = n+1
double n = n*2
square n = n^2

ifEvenInc n = ifEven inc n
ifEvenDouble n = ifEven double n
ifEvenSquare n = ifEven square n

author = ("Will","Kurt")
{-
*Main> fst author
"Will"
*Main> snd author
"Kurt"
-}

names = [("Ian","Curtis"),
        ("Bernard","Sumner"),
        ("Peter","Hook"),
        ("Stephen","Morris")]
{-
*Main> sort names
[("Bernard","Sumner"),("Ian","Curtis"),("Peter","Hook"),("Stephen","Morris")]
-}

compareLastNames name1 name2 =  if lastName1 > lastName2
                                then GT
                                else if lastName1 < lastName2
                                    then LT
                                    else EQ
    where   lastName1 = snd name1
            lastName2 = snd name2

{-
*Main> sortBy compareLastNames names
[("Ian","Curtis"),("Peter","Hook"),("Stephen","Morris"),("Bernard","Sumner")]
-}