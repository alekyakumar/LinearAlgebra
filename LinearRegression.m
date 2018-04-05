%%Reference https://www.mathworks.com%%
clear all
close all

x = [0 1 2 3 4 5 6];
y = [-0.02 1.1 1.98 3.05 3.95 5.1 6.02];
x = transpose(x);
y = transpose(y);
X = [ones(length(x),1) x];
%X
b = X\y
plot(x,y)
hold on
y_pred = X*b
plot(x,y_pred)
rss1 = 1 - sum((y - y_pred).^2)/sum((y-mean(y)).^2)

p = polyfit(x,y,2)
pv = polyval(p,x)
plot(x,y,'o')
hold on
plot(x,pv)  
hold on
plot(x,y_pred)

y_res = y - pv;
residual_sum = sum(y_res.^2);
sum_total = (length(y)-1) * var(y);
rss2 = 1 - residual_sum/sum_total 
%rss2 = 1 - sum((y - pv).^2)/sum((y-mean(y)).^2)
rsq_adj = 1 - residual_sum/sum_total * (length(y)-1)/(length(y)-length(p))
