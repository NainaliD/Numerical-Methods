%ingredients
f = input('enter your function: ');
x0 = input('enter initial guess: '); %it does not matter what initail guesses are
x1 = input('enter 2nd guess: ');
e = input('enter tolerance: ');
n = input('enter number of iteration: ');
%processing
for i =1:n
    x2 = (x0*f(x1) - x1*f(x0))/(f(x1)-f(x0));
    fprintf('x%d = %.4f\n',i,x2);
    if abs(x1-x0)<e
        break
    end    
    x0 = x1; % donot change order 
    x1 = x2;
end    
