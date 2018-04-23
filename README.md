# Algorithms-Mech105
This folder includes all of the algorithms I have created this semester. Thus far, this includes three algorithms which includes LU factorization, False Position, and Simpson's Composite. All of these are numerical methods for helping predict either a root or a optimum.

# Simpson.m
This code takes Simpsons 1/3 and 3/8 rules and combined them into a composite of the two. It uses the quicker but less precise 1/3 rule where it is applicable to even segments and then uses the slower, but more precise 3/8 rule where there is odd segments.


# falsePosition.m
This code is a root finding method that attempts to evaluate a problem using false values for the variables, and then adjusting the values accordingly. This assignment is repeated until the root is estimated to the best of our ability.


# luFactor.m
This code factors a matrix as the product of a lower triangular matrix and an upper triangular matrix. This technique is used in many applications such as finding the inverse of a matrix as well as finding components of an equation such as the stimulus.
