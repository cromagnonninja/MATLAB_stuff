t = 0:0.001:1;
f1 = 30000;
x1 = 2*sin(2*3.14*f1*t);
subplot(3,1,1);
plot(t,x1);

f2 = 50000;
x2 = 3*sin(2*3.14*f2*t);
subplot(3,1,2);
plot(t,x2);

