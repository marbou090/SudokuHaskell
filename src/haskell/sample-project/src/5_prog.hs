ifEven myFunction x =   if even x
                        then myFunction x
                        else x

getIfEven f = (\x -> ifEven f x)

getRequestURL host apikey resource id = host ++ "/" ++ resource ++ "/" ++ id ++ "?token=" ++ apikey
{-
*Main> getRequestURL "http://example.com" "1337hAsk3ll" "book" "1234"
"http://example.com/book/1234?token=1337hAsk3ll"
-}
genHostRequestBuilder host = (\apikey resource id -> getRequestURL host apikey resource id)

exampleUrlBuilder = genHostRequestBuilder "http://example.com"

{-
*Main> exampleUrlBuilder "1337hAsk3ll" "book" "1234" 
"http://example.com/book/1234?token=1337hAsk3ll"
-}

genApiRequestBuilder hostBuilder apikey resource = (\ id -> hostBuilder apikey resource id)

myExampleUrlBuilder = genApiRequestBuilder exampleUrlBuilder "1337hAsk311"
{-
*Main> myExampleUrlBuilder "book" "1234" 
"http://example.com/book/1234?token=1337hAsk311"
-}

exampleBuilder = getRequestURL "1337hAsk3ll" "book"