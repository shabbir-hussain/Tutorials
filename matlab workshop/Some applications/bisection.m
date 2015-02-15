function minimum = bisection(low, high, MaxIteration, MinError, func)

% 	bisection solve for the minimum of a function f 
%   low is the lower bound
%   high is the upper bound
%   MaxIteration is the max number of iterations
%   MinError is the minimum error we will tolerate
%   func is a pointer to the function we are tryting to minimize

minimum = 0;

    for i=1:MaxIteration
        
        %get midpoint
        midPoint = mean([low high]);

        %change bounds
        if(func(midPoint) > 0)
            high = midPoint;
        else
            low = midPoint;
        end
        minimum = midPoint;

        %check if error is low enough
        if(abs(func(midPoint))<MinError)
            break;
        end
    end

end
