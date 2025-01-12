```haskell
import Data.List (sort)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs
  print ys
  let zs = map (+1) ys
  print zs

  -- Example with a potentially infinite list. Note the use of `take`
  let infiniteList = [1..] 
  let finiteList = take 10 infiniteList  -- Limit to a finite portion
  let sortedList = sort finiteList
  print sortedList
  let mappedList = map (+1) sortedList
  print mappedList
```