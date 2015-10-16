function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.

theta = zeros(size(X, 2), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%

% ---------------------- Sample Solution ----------------------


%theta=(X'*y)/(X'*X)
%[a b]=size(X'*X)

%theta= (eye(a)/(X'*X))*X'*y
theta= pinv(X'*X)*X'*y
%theta=  (X'*y)*        (eye(a)/(X'*X)) 

%(X'*X)

% -------------------------------------------------------------


% ============================================================

end
