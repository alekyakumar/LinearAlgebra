clear all
close all
I = eye(1);
errors_CGS=[]
errors_MGS=[]
errors_HR=[]
errors_QR=[]
for o = 2:10
    A = hilb(o);
    [m,n] = size(A);
    Q = zeros(m,n);
    R = zeros(n,n);
%%%%%%%%%%Classical Gramm Schmidt%%%%%    
[x,r] = Classical_GrammSchmidt(A);
error = norm(x'*x - I);
errors_CGS=[errors_CGS,error];
clear r,error


%%%%%%%%%%Modified Gram Schmidt%%%%%%%%%
[y,r] = Modified_GrammSchmidt(A);
error = norm(x'*x - I);
errors_MGS=[errors_MGS,error];
clear r,error

%%%%%Householder Reflector%%%%
[z,r] = Householder_Orthogonalisation(A);
error = norm(r'*r - I);
errors_HR=[errors_HR,error];
clear r,error


%%%%QR using MATLAB function%%%%
[Q R] = qr(A)
error = norm(R'*R - I)
errors_QR = [errors_QR,error];
end
disp(errors_CGS)
disp(errors_MGS)
disp(errors_HR)
disp(errors_QR)

subplot(4,1,1)
plot(errors_CGS)
subplot(4,1,2)
plot(errors_HR)
subplot(4,1,3);
plot(errors_MGS)
subplot(4,1,4);
plot(errors_QR)

%%%There is loss of orthogonality in each function because the error is not
%%%zero in any of the factorizations. Also,the error keeps increasing
%%%linearly as the size of the matrix increases
