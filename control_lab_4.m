v1 = [1 2 3 4 5 6 7 8 9 10];
v2 = [10 9 8 7 6 5 4 3 2 1];
v3 = conv(v1,v2);
plot(v3);
hold on;
stem(v3,'fill','-.');
grid on;