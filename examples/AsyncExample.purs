module AsyncExample where

import Prelude
import Clipboardy (read, write)
import Effect.Aff  (launchAff_)
import Effect (Effect)
import Effect.Console (log)
import Effect.Class (liftEffect)

main :: Effect Unit
main =
  launchAff_ do
    -- copy
    write "🦄"
    -- paste
    val <- read
    liftEffect $ log val
