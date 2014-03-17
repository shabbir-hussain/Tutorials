%this fucntion returns the result of euler's method 
%given any function that represents the derivative of y
function result = eulersMethod(stepSize, initialValue, point, func)
t = 0:stepSize:point;
yn = initialValue;

for n=1:(1/stepSize)
    yn = yn + stepSize*func(t(n),yn);
end

result = yn;