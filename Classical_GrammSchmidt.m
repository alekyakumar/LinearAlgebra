function [Q,R] = Classical_GrammSchmidt(A)
[m,n] = size(A);
Q = zeros(m,n);
R = zeros(n,n);
%%%%%Classical Gramm Schmidt%%%%
for j=1:n
    V(:,j) = A(:,j);
    for i=1:j-1
        R(i,j) = Q(:,i)'*A(:,j);
        V(:,j) = V(:,j) - R(i,j)*Q(:,i);
    end
    R(j,j) = norm(V(:,j));
    Q(:,j) = V(:,j)/R(j,j);

end
disp(Q)
disp(R)
CGS = Q*R


end
