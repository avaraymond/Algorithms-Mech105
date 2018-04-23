function I = Simpson(x,y)
%the integral of the vector of function values ‘y’ with respect to ‘x’

if nargin < 2   %check number of input values
    error('invalid number of arguments')
end

if length(x)~=length(y) %check the inputs are the same length
    error('lengths must agree')
end

a = x(1,1);
b = x(1,end);

% check the x input is equally spaced
diff(x) 
r = range(x);
if r / diff(x1) > 0.000001
    error('x input must be equally spaced')
end

%create array for x from a to b
for i=a:b  
a=a+1;
x(a)=i;
 end
warning('the trapezoidal rule has to be used on last interval if odd number of intervals')
be used on the last interval
if mod(size(x,2)) ~= 0 %simpsons 1/3 with even intervals
   a = x(1,1);
   b = x(1,2);
   n = b-a; 
   h = n/2;
   I = n *(f(a) + 4*f(a + h) + f(b))/6;
else 
     size(x,1)
        disp("trapezoidal rule has to  be used on the last interval")
        I = n * (f(a) + 4*f(h) + f(b)) /6;
        for x = linspace(a, b, n) %trap rule for last interval of odd inverval           
            y = func(x);                       
            sum_y = sum(y) - (y(1) + y(end)) ./ 2 ;
            dx = (b - a) / (n - 1);                 
            totalarea = sum_y * dx;
        end
end
end


 
    
    
