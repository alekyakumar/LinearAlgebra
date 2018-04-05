A = [ 8 -6;-36 6];
b = [44; -36];

[L,U] = lu(A);
d = L\B;
disp(d);
x = U\d;
disp(x);
end