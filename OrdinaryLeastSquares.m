clear all
close all
m = 50
n = 12
t = linspace(0,1,m)
b = cos(4*t);
A = vander(t);
A = fliplr(A);
A = A(:,1:n)

%%%%%Normal Equation%%%%
C = A'*A; 
M = A'*b';
L = chol(C,'lower');
R = chol(C,'upper');
W = M\L;
X_norm = R\W';
error_norm = norm(X_norm)./sqrt(length(X_norm))

%%%%%%%%%Modified Gram Schmidt%%%%
[y,r] = Modified_GrammSchmidt(A);
Y = y'*b';
X_MGS = r\Y;
error_MGS = norm(X_MGS)./sqrt(length(X_MGS))

%%%%%Householder Reflector%%%%
[z,r] = Householder_Orthogonalisation(A);
Y = z'*b';
X_HR = r\Y;
error_HR = norm(X_MGS)./sqrt(length(X_HR))

%%%%%QR Factorization %%%%
[Q R] = qr(A);
Y = Q'*b';
X_QR = R\Y;
error_QR = norm(X_QR)./sqrt(length(X_QR))
%%%%%%%%%%A\b computation%%%%
X=A\b'
error_X = norm(X)./sqrt(length(X))
%%%%%%SVD%%%%%%
[U,S,V] = svd(A,0);
X_SVD = V*((U'*b')./diag(S));
error_SVD = norm(X_SVD)./sqrt(length(X_SVD))


%%%%%From calculating the least squares error, we observe that all errors
%%%%%are same except for the error calculated from Normal equation method. From
%%%%%this we obserbve that the error is smallest for the least equares
%%%%%calculated using normal equations. 