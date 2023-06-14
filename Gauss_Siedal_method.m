A = input('enter your coefficient matrix: ');
B = input('enter your vector matrix: ');
P = input('enter initial guess: ');
n = input('enter no. of iteration: ');
e = input('enter tolerance: ');
N = length(B);
X = zeros(N,1);
Y = zeros(N,1);
for j=1:n
    for i=1:N
       X(i) = (B(i)/A(i,i)) - (A(i,[1:i-1,i+1:N])*P([1:i-1,i+1:N]))/A(i,i);
       P(i) = X(i)
    end
   fprintf('iteration no %d\n',j)
   X
   if abs(Y-X)<e
       break
   end
   Y = X;
end  
