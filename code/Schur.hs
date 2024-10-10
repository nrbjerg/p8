-- | Module for checking if any 2-coloring of [1; N] yields a monochromatic subset of the form
-- | {x, y, x + y, x * y}. Provided N is sufficently large
module Main (main) where

import Data.List (subsequences)

data Color = Red | Blue deriving (Show, Eq)

colors :: [Color]
colors = [Red, Blue]

type Coloring = [Color]

-- | Checks if 'n' can be colored 'color', without creating a
-- | monochromatic subset of the form {x, y, x + y, x * y}.
canBeAddedToColoring :: Int -> Color -> Coloring -> Bool
canBeAddedToColoring n color coloring = not $ any condition combinations_with_replacement where
  combinations = (filter (\xs -> 2 == length xs) $ subsequences mc_nats)
  combinations_as_tuples = map (\xs -> (xs !! 0, xs !! 1)) combinations
  combinations_with_replacement = combinations_as_tuples ++ zip mc_nats mc_nats
  sum_cond (x, y) = ((x + y == n) || ((x + y) `elem` mc_nats))
  prod_cond (x, y) = ((x * y == n) || ((x * y) `elem` mc_nats))
  condition (x, y) = sum_cond (x, y) && prod_cond (x, y)
  mc_nats = map fst $ filter (\(_, c) -> c == color) $ zip [1..] coloring

-- | Computes a list of valid extensions, gives the empty list if no such extensions exists.
extendColoring :: Int -> Coloring -> [Coloring]
extendColoring  n coloring = [coloring ++ [color] | color <- [Red, Blue],
                                                     canBeAddedToColoring n color coloring]

-- | Computes the number of nats needed to garentie that a
-- | monochromatic subset of the form {x, y, x + y, x * y} exists
computeNumberOfNatsNeeded :: Int
computeNumberOfNatsNeeded = aux 3 [[Red, Blue]] where
  -- NOTE: The only valid coloring of 1, 2, up to isomorphism.
  aux n [] = n - 1
  aux n colorings = aux (n + 1) $ concatMap (extendColoring n) colorings

 -- | Do the actual computation
main :: IO ()
main = do
  putStrLn $ "S*_2(2) = " ++ show (computeNumberOfNatsNeeded)
  -- Output is:
  -- S*_2(2) = 39
