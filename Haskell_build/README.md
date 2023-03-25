# My Haskell

https://github.com/YoungHaKim7/Haskell_Lang

# ghc 로 컴파일 하고 실행 파일 만들어서 실행하기

```
$ touch haskell-tu.hs


$ ghc --make haskell-tu


// 하면 3가지 파일이 만들어진다.

haskell-tut      실행파일
haskell-tut.hi    hi 파일명
haskell-tut.o    o 파일명


// haskell-tut.hs 하스켈 코드


$ ./haskell-tut

코드가 실행 된다.
```

## ghc 2(bash 만들어 실행)

```
#!/bin/bash

ghc main.hs -threaded
```

https://stackoverflow.com/questions/35477808/haskell-create-thread-write-to-screen-sleep-thread-write-something-else-to

## haskell

- main.hs

```
import Control.Concurrent (threadDelay)
import System.IO (hFlush, stdout)

main :: IO ()
main = do
  let chars = ['-', '\\', '|', '/']
  let loop i = do
        putStr $ [chars !! (i `mod` length chars)] ++ "\r"
        hFlush stdout -- flush output buffer
        threadDelay 200000
        loop (i + 1)
  loop 0
```

# haskell code 예시

- 간단한 하스켈 코드

- haskell-tut.hs

```
import Data.List
import System.IO

main = do
    putStrLn "What's your name"
    name <- getLine
    putStrLn ("Hello " ++ name)

haskell-tut.hs 파일을 컴파일 한 후 실행하는 방법 예시
$ ghc --make haskell-tut
$ ./haskell-tut
```
