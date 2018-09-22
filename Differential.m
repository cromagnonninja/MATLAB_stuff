clf;
h = round(rand(1,8));
n=1;
l=length(h);
y = zeros(length(h));
subplot(2,1,1);
p = stairs(h);
set(p,'LineWidth',2.5);
ref = 1; 
while n<=length(h)-1        
    if h(n) == ref
        y(n) = 1;
    end
    if h(n) ~= ref
        y(n) = 0;
    end
    ref = h(n);
    n=n+1;
end
%pause; 

subplot(2,1,2);
d=stem(y);
grid on;
title('Line code Differential');
set(d,'LineWidth',2.5);
hold on;
