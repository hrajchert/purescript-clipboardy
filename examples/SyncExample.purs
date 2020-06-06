module SyncExample where

import Prelude
import Clipboardy (readSync, writeSync)
import Effect (Effect)
import Effect.Console (log)

main :: Effect Unit
main = do
  -- copy
  writeSync "🦄"
  -- paste
  val <- readSync
  log val
