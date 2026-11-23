
function [lambda] = line_search(F,dF0)
    
    lambda = 1;
    alpha = 0.5;
    epsilon = 0.001;

    F0 = F(0);

   % while F(alpha*lambda) < F0 + epsilon*dF0
   %    lambda = alpha*lambda;
   % end

    while F(lambda) > F0 + epsilon*dF0*lambda
        lambda = lambda * alpha;
        disp(lambda)

    end

