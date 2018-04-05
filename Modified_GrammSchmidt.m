%%%%%%%%%%Modified Gram Schmidt%%%%%%%%%k
function [Q R] = Modified_GrammSchmidt(A)
[m,n] = size(A);
Q = zeros(m,n);
R = zeros(n,n);
for k=1:n
    R(k,k) = norm(A(:,k));
    Q(:,k) = A(:,k)/R(k,k);
    R(k,k+1:n) = Q(:,k)'*A(:,k+1:n);
    A(:,k+1:n) = A(:,k+1:n) - Q(:,k)*R(k,k+1:n);
end
 


disp(Q)
disp(R)   
MGS = Q*R  

end