function[L, U, P] = luFactor(A)
A = [10 2 -1; -3 -6 2; 1 1 5];
% A= coefficient matrix 
% L= lower triangular matrix
% U= upper triangular matrix
% P= the pivot matrix

if nargin < 1 %make sure number of inputs is correct
    error('innsufficient number of inputs')
end

[R, C] = size(A); 
if R ~= C %make sure matrix dimensions are correct
    error('Matrix A must be a square matrix')
end

row1 = A(1,:);
if abs(A(1,1)) > abs(A(:,1)) %check for option of no pivoting
    [L, U] = lu(A);
    
else if abs(A(2,1)) > abs(A(1,1)) %check for pivoting with second row
        A(2,:) = A(1,:);
        A(2,:) = row1;
        [L, U] = lu(A)
    else if abs(A(3,1)) > abs(A(1,1))%check for pivoting with third row
            A(1,:) = A(3,:);
            A(3,:) = row1;
            [L, U] = lu(A);
        end
    end
end
