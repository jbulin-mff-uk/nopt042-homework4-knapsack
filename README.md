# Homework 3 - boardomino

In the _boardomino_ puzzle, the goal is to cover an $n\times n$ chess board with some fields missing by domino tiles, if it is possible. The input is given by a positive integer $n$ (the size of the board) and a list of pairs (2-element arrays) of missing fields. If a covering exists, output "yes" and some reasonable representation of it. Else, the output should contain the word "failed" (e.g. the standard message of the cp solver).

Here are some sample instances (the first one is unsatisfiable):

```
picat boardomino.pi 4 "[{1,1},{4,4}]"
picat boardomino.pi 8 "[{1,1},{1,2}]"
picat boardomino.pi 8 "[{1,1},{8,8}]"
```
Try different models and solvers and choose the best option based on the performance on the unsatisfiable instances of the form `n [{1,1},{n,n}]`. (Your program should not be much slower than the best one.)

UPDATED NOTE: Using the mip solver will no longer fail all your tests, they should be checked correctly.
