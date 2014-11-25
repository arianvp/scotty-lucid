module Web.Scotty.Lucid where
import           Network.Wai
import qualified Control.Monad.State as MS
import           Lucid

lucid :: Html a -> ActionM a
lucid h = do
  header "Content-Type" "text/html"
  MS.modify . setContent .  runIdentity . execHtml $ h
