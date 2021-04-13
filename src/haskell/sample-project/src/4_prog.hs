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
                                    else if firstName1 > firstName2
                                        then GT
                                        else if firstName1 < firstName2
                                            then LT
                                            else EQ
    where   lastName1 = snd name1
            lastName2 = snd name2
            firstName1 = fst name1
            firstName2 = fst name2

{-
*Main> sortBy compareLastNames names
[("Ian","Curtis"),("Peter","Hook"),("Stephen","Morris"),("Bernard","Sumner")]
-}
{-
addressLetter name location = nameText ++ " - " ++ location
    where nameText = (fst name) ++ " " ++ (snd name)
-}

{-
*Main> addressLetter ("Bob","Smith") "PO Box 1234 - San Francisco, CA, 94111"
"Bob Smith - PO Box 1234 - San Francisco, CA, 94111"
-}
addressLetter name location = locationFunction name
    where locationFunction = getLOcationFunction location

sfOffice name = if lastName < "L"
                then nameText ++ " - PO Box 1234 - San Francisco, CA, 94111"
                else nameText ++ " - PO Box 1010 - San Francisco, CA, 94109"
    where   lastName = snd name
            nameText = (fst name) ++ " " ++ lastName

nyOffice name = nameText ++ ": PO Box 789 - New York, NY, 10013"
    where nameText = (fst name) ++ " " ++ (snd name)

renoOffice name = nameText ++ " - PO Box 456 - Reno, NV 89523"
    where nameText = snd name

getLOcationFunction location = case location of
    "ny" -> nyOffice
    "sf" -> sfOffice
    "reno" -> renoOffice
    _ -> (\name -> (fst name) ++ " " ++ (snd name))

{-
*Main> addressLetter ("Bob","Smith") "ny"
"Bob Smith: PO Box 789 - New York, NY, 10013"
*Main> addressLetter ("Bob","Jones") "ny"
"Bob Jones: PO Box 789 - New York, NY, 10013"
*Main> addressLetter ("Samantha","Smith") "sf"
"Samantha Smith - PO Box 1010 - San Francisco, CA, 94109"
*Main> addressLetter ("Bob","Smith") "reno"
"Smith - PO Box 456 - Reno, NV 89523"
*Main> addressLetter ("Bob","Smith") "la"
"Bob Smith"
-}