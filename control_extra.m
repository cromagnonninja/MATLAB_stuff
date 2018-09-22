v1 = [1 2 3 4 5 6 7 8 9 10];
v2 = [1 2 1 2 1 2 1 2 1 2];
v3 = conv(v1,v2);
plot(v3);
stem(v3,'filled');
