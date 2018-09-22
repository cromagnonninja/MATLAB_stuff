t = 0:0.01:1;
m = t.^3;

A = 5;
stem(t,m);
hold on;
v1 = zeros(size(t));
for i = 1:length(t)
    if m(i) < 1/A
        v1(i) = A * (abs(m(i))/(1 + log(A)));
    end
    if m(i) >= 1/A && m(i) <= 1
        v1(i) = (1 + log(A * m(i))) / (1 +  log(A));
    end
end
stairs(t,v1);

snr(v1,v1-m)