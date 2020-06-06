module Clipboardy
  ( read
  , write
  , readSync
  , writeSync
  ) where

import Prelude
import Effect (Effect)
import Effect.Uncurried as FU
import Control.Promise (Promise, toAffE)
import Effect.Aff (Aff)

foreign import _read :: FU.EffectFn1 Unit (Promise String)

read :: Aff String
read = toAffE $ FU.runEffectFn1 _read unit

foreign import _write :: FU.EffectFn1 String (Promise Unit)

write :: String -> Aff Unit
write = toAffE <<< FU.runEffectFn1 _write

foreign import _readSync :: FU.EffectFn1 Unit String

readSync :: Effect String
readSync = FU.runEffectFn1 _readSync unit

foreign import _writeSync :: FU.EffectFn1 String Unit

writeSync :: String -> Effect Unit
writeSync = FU.runEffectFn1 _writeSync
