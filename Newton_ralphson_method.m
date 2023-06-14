%ingredients
f = input('enter your function: ');
df = input('enter derivative of function; ');
x0 = input('enter initial guess: ');
e = input('enter tolerance: ');
n = input('number of iteration: ');
%processing
if df(x0)~= 0
   for i=1:n
       x1 = x0 - f(x0)/df(x0);
       fprintf('x%d = %.10f\n',i,x1');
       if abs(x1-x0)<e
           break
       end
       if df(x1) == 0
           disp('newton ralphson failed');
       end    
       x0 = x1;
   end    
    
else
    disp('newton raphson failed');
end    