%ingredient
g = input('enter your function: ');
x0 = input('enter initial guess: ');
e = input('enter tolerance: ');
n = input('enter no. of iteration: ');
for i=1:n
   x1 = g(x0);
   fprintf('x%d = %.4f\n',i,x1)
   if abs(x1-x0)<e
       break
   end    
   x0 = x1;
end