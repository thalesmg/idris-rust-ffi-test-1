module Main where

import Foreign.C.Types

foreign import ccall "oi"
  oi :: CInt -> CInt

main :: IO ()
main = do
  print (oi 10)
