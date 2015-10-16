function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
%version 1 (using implicit loops)
%suma=0.0;
%for i=1:m
%	suma=suma+(   ((X(i,1)*theta(1) + X(i,2)*theta(2)) - y(i))**2     );
%end
%J=suma/(2*m);

%version 2 (using vectorization) 
J= sum(((X*theta)-y).^2)/(2*m);

% =========================================================================

end
