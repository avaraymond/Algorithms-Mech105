function[root, fx, ea, iter] = falsePosition (func, Xl, Xu, es)
%use false position to find root of a function
%input variables
%func- the function being evaluated
%Xl-lower guess of root
%Xu-upper guess of root
%es- desired relative error (default = 0.0001%)
%maxiter- maximum number of iterations (default = 200)
format long
%output variables
%root- actual root
%fx-function evaluated at root
%ea- relative error approximation
%iter- number of iterations that was performed
 if nargin < 3
     error('Must have at least 3 arguments')
 end
 signtest = func(Xl)*func(Xu);
 if signtest > 0
     error('Sign change must occur between the lower and upper limits to find root')
 end
 if Xl || Xu == 0
     error('You guessed the root')
 end
%initialize variables 
 Xl=Xu;
 ea = 100;
 maxiter = 200;
 
 f(Xu) = myfunc(Xu);
 f(Xl) = myfunc(Xl);

 count = 0;
 if count < maxiter
 while es > .0001
     
      %false position loop
     root = Xu - ((f(Xu).*(Xl - Xu))/(f(Xl)-f(Xu)));
     %re-evaluate f at Xr
     fx = myfunc(root);
     if sign (fx)== sign(Xu)
         Xu = root;
         f(Xu)= fx;
     else
         Xl = root;
         f(Xl) = fx;
       
     end
     count = count + 1;
 end
 end
iter = count;
 

%fprintf statements for each function
 fprintf(root)
fprintf(iter)
fprintf(ea)
fprintf(fx)

