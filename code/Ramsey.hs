-- | Module for checking small ramsey graphs
module Main (main) where

import Data.List (subsequences)
import Data.Maybe (catMaybes)

-- | Colors for use later
data Color = Red | Blue | NotAdjacent deriving (Show, Eq)

colors :: [Color]
colors = [Red, Blue]

-- | A complete graph with a coloring
data CG = CG {order :: Int, adjacency_matrix :: [[Color]]} deriving (Show, Eq)

combinations :: Int -> [a] -> [[a]]
combinations k xs = filter (\x -> k == length x) $ subsequences xs

-- | Checks if a graph has a clique of order k of a given coloring
hasCliqueOfColor :: CG -> Int -> Color -> Maybe Color
hasCliqueOfColor (CG n adj_mat) k color = let
  color_matrix = [[if i == j then NotAdjacent else color | i <- [1..k]] | j <- [1..k]]
  submatricies = [[[(adj_mat !! v) !! u | v <- verticies] | u <- verticies]
                                | verticies <- combinations k [0..(n - 1)]]
  in if color_matrix `elem` submatricies then Just color else Nothing

hasCliques :: CG -> [Int] -> [Color]
hasCliques graph clique_sizes = catMaybes $ zipWith (hasCliqueOfColor graph) clique_sizes colors

-- | Construct counter examples
counterExample3_5 :: CG
counterExample3_5 = CG 13 [[assignColor i j | i <- [0..12]] | j <- [0..12]] where
  assignColor v u | v == u = NotAdjacent -- NOTE: Each vertex is not adjacent to it self
                  | ((v - u) `rem` 13) `elem` [1, 5, 8, 12] = Red
                  | otherwise = Blue

counterExample4_4 :: CG
counterExample4_4 = CG 17 [[assignColor i j | i <- [0..16]] | j <- [0..16]] where
  assignColor v u | v == u = NotAdjacent -- NOTE: Each vertex is not adjacent to it self
                  | ((v - u) `rem` 17) `elem` [1, 2, 4, 8, 9, 13, 15, 16] = Red
                  | otherwise = Blue

-- | Do the actual computation
main :: IO ()
main = do
  putStrLn $ "chi admits a cliques of colors: " ++ show (hasCliques counterExample3_5 [3, 5])
  putStrLn $ "gamma admits a cliques of colors: " ++ show (hasCliques counterExample4_4 [4, 4])
  -- Output is:
  -- chi admits cliques of colors: []
  -- gamma admits cliques of colors: []
