messyMain::IO()
messyMain = do
    print "Who are you?"
    you <- getLine
    print("You are " ++you)

toPart recipient = "I am " ++ recipient ++",\n"
bodyPart bookTitle = "Thanks for buying " ++ bookTitle ++ ".\n"
fromPart author = "Thanks,\n"++author

createEmail recipient bookTitle author = toPart recipient ++
                                        bodyPart bookTitle ++
                                        fromPart author

main = do   
    print "Who is the mail for?"
    recipient <- getLine
    print "What is the Title?"
    title <- getLine
    print "Who is the Author?"
    author <- getLine
    print (createEmail recipient title author)