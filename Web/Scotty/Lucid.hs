{-#LANGUAGE OverloadedStrings #-}
module Web.Scotty.Lucid where
import           Web.Scotty
import           Lucid

lucid :: Html a -> ActionM ()
lucid h = do
  setHeader "Content-Type" "text/html"
  raw . renderBS  $ h
