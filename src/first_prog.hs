messyMain :: IO()
messyMain = do
    print "あなたはだあれ"
    you <- getLine
    print( "おまえは"++you)