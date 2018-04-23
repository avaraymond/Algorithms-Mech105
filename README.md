# Algorithms-Mech105
This folder includes all of the algorithms I have created this semester. Thus far, this includes three algorithms which includes LU factorization, False Position, and Simpson's Composite. All of these are numerical methods for helping predict either a root or a optimum.

# Simpson.m
This code takes Simpsons 1/3 and 3/8 rules and combined them into a composite of the two. It uses the quicker but less precise 1/3 rule where it is applicable to even segments and then uses the slower, but more precise 3/8 rule where there is odd segments.
Inputs: 
  x =x value of the estimate
  y =y valuse of the estimate
Outputs:
  I= [A]*[A^(-1)]


# falsePosition.m
This code is a root finding method that attempts to evaluate a problem using false values for the variables, and then adjusting the values accordingly. This assignment is repeated until the root is estimated to the best of our ability.
Inputs:
  func- the function being evaluated
  Xl-lower guess of root
  Xu-upper guess of root
  es- desired relative error (default = 0.0001%)
  maxiter- maximum number of iterations (default = 200)
Outputs:
  root- actual root
  fx-function evaluated at root
  ea- relative error approximation
  iter- number of iterations that was performed

# luFactor.m
This code factors a matrix as the product of a lower triangular matrix and an upper triangular matrix. This technique is used in many applications such as finding the inverse of a matrix as well as finding components of an equation such as the stimulus.
Inputs:
  A= coefficient matrix 
Outputs:
  L= lower triangular matrix
  U= upper triangular matrix
  P= the pivot matrix

