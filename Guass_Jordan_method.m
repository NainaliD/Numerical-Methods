%ingredient
A = input('enter your coeffiecient matrix: ');
B = input('enter your vector matrix: ');
N = length(B);
X = zeros(N,1);
Aug = [A B];
for j=1:N %for columns
    A(j,:) = A(j,:)/A(j,j);
    for i=1:N % for rows
        if i~=j
            m = Aug(i,j);
            Aug(i,:) = Aug(i,:) - m*Aug(j,:);
           
        end
        
    end
end
