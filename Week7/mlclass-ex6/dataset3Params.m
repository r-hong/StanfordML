function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
CC=[0.01 0.03 0.1 0.3 1 3 10 30];
SS=[0.01 0.03 0.1 0.3 1 3 10 30];
d=0;
err_MIN=1000;
for i=1:8
        for j=1:8
                model= svmTrain(X, y, CC(i), @(x1, x2) gaussianKernel(x1, x2, SS(j)));
                pred = svmPredict(model, Xval);
                err=mean(double(pred~=yval));
                if (err<=err_MIN)
                        d=d+1;
                        err_MIN=err;
                        minC(d)=CC(i);
                        minS(d)=SS(j);
                end

        end
end
[a b]=size(minC);
C=minC(b);
sigma=minS(b);







% =========================================================================

end
