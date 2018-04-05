

clear all
close all

f = @(x) sin(x)
f_der = @(x) cos(x)
h = logspace(-1,-16,10)
p = 120
errors=[]
for i = 1:10;
    f_app = (sin(p + h(i)) - f(p))/h(i); 
    f_der(p);
    error = f_der(p) - f_app;
    errors=[errors,error];
end
errors
    
loglog(h,abs(errors),'o-')
xlabel('Step Size')
ylabel('Error')
