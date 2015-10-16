function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
Nfeat=size(X,2);
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    %version 1 (using implicit loops)	
    %suma1=0.0;
    %suma2=0.0;	
    %for i=1:m
	%suma1=suma1+   ((X(i,1)*theta(1) + X(i,2)*theta(2)) - y(i)) * X(i,1);
	%suma2=suma2+   ((X(i,1)*theta(1) + X(i,2)*theta(2)) - y(i)) * X(i,2);
    %end
    %theta(1,1)=theta(1,1)-(alpha*(1/m)*suma1);
    %theta(2,1)=theta(2,1)-(alpha*(1/m)*suma2);		

    %version 2 (using vectorization)
    for i=1:Nfeat
	suma(i)=sum(((X*theta)-y).*X(:,i));
    end
    for i=1:Nfeat
        theta(i,1)=theta(i,1)-(alpha*(1/m)*suma(i));
    end
    
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

%end
