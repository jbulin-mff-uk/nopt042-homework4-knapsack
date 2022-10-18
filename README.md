# Homework 4 -knapsack

There are two common versions of the problem: the general __knapsack__ problem:

> Given a set of items, each with a weight and a value, determine __how many of each item__ to include in a collection so that the total weight is less than or equal to a given limit and the total value is as large as possible.

And the __0-1 knapsack__ problem:


> Given a set of items, each with a weight and a value, determine __which items__ to include in a collection so that the total weight is less than or equal to a given limit and the total value is as large as possible.

(In a general knapsack problem, we can take any number of each item, in the 0-1 version we can take at most one of each.)

#### Example of an instance:

A thief breaks into a department store (general knapsack) or into a home (0-1 knapsack). They can carry 23kg. Which items (and how many of each, in the general version) should they take to maximize profit? There are the following items:

* a TV (weighs 15kg, costs \$500),
* a desktop computer (weighs 11kg, costs \$350)
* a laptop (weighs 5kg, costs \$230), 
* a tablet (weighs 1kg, costs \$115),
* an antique vase (weighs 7kg, costs \$180), 
* a bottle of whisky (weighs 3kg, costs \$75), and 
* a leather jacket (weighs 4kg, costs \$125).

This instance is given in the file `data.pi`.

Your goal is to a program for both the problems. The models accept an optional flag "-01" to denote the 0-1 version, and a filename of a data file including the instance. The output should contain the optimal value, and some reasonable representation of the chosen items. (The autograder will only check the presence of the optimum value.)

Running
```
picat knapsack.pi data.pi
```
should output the optimal total value of 2645 and the chosen items `23 of tablet` in some reasonable format. Running 

```
picat knapsack.pi -01 data.pi
```
should output the optimal total value of 845 and the chosen items `[tv,laptop,tablet]` in some reasonable format.


Use the solver `cp` (even though `mip` would be better here) and try to find the best model and the best search strategy. You will need to generate larger instances. You can do it in Picat, using the function `random(MinValue, MaxValue) = RandomValue`. See the attached (proof of conceptish) `generate-random-data.pi`.