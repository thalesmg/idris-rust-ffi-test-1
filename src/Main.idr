module Main

-- %dynamic "./target/debug"
-- %link C "target/debug/libffitest.a"
-- %include C "./target/debug"
-- %lib C "ffitest"

magic_johnson : Int -> IO Int
magic_johnson x =
  foreign FFI_C "oi" (Int -> IO Int) x

main : IO ()
main = do
  putStrLn "oi!"
  res <- magic_johnson 10
  print res
