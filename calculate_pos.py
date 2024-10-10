#!/usr/bin/env python3
import numpy as np
from numpy.typing import ArrayLike
from typing import Callable
from itertools import combinations

N = 6

def create_nodes(order: int, radius: float, offset: ArrayLike = None):
        print("\\tikzset{punkt/.style={circle, thick, draw=black, minimum width=0.2cm,inner sep=1}}")
        if offset is None:
                offset = np.zeros(2)
        cords = [np.array([radius * np.sin(2 * np.pi * idx / order),
                           radius * np.cos(2 * np.pi * idx / order)]) + offset for idx in range(order)]
        for idx, (x, y) in enumerate(cords + offset):
                print(f"\\node[punkt] at ({round(x, 2)}, {round(y, 2)}) ({chr(idx + ord('a'))}) {{$v_{idx + 1}$}};")

def create_graph_from_edge_coloring(chi: Callable[(int, int), str], order: int = 13, radius: float = 3.0):

    create_nodes(order, radius)

    for (i, j) in combinations(range(order), 2):
        color = chi((i, j))
        print(f"\\draw [thick, draw={color}] ({chr(i + ord('a'))}) -- ({chr(j + ord('a'))});")

if __name__ == "__main__":
    #chi = lambda e: "red" if abs(e[0] - e[1]) % 17 in [1, 5, 8, 12] else "blue"
    #gamma = lambda e: "red" if abs(e[0] - e[1]) % 17 in [1, 2, 4, 8, 9, 13, 15, 16] else "blue"
    #create_graph_from_edge_coloring(chi, order=13, radius=2.6)

    create_nodes(5, 2, offset = np.array([0.0, 1.81]))
    create_nodes(5, 2, offset = np.array([1.81, 0]))
    create_nodes(5, 2, offset = np.array([0.0, -1.81]))
    create_nodes(5, 2, offset = np.array([1.81, 0.0]))
    create_nodes(3, (2 + 1.62) / 2)
