scotty-lucid
============

lucid integration for Scotty


Example
===========


    template title body =
      html_ do
        head_ $ title_ title
        body_ body
        
    
    website = template "Hello world" $ do
      h1_ "I am a website"
      p_ `with` [class_ "bigparagraph"] "and I'm a bigparagraph"
      
    
    main = scotty 3000 $ do
      get "/" $ lucid website
