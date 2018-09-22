A = [1 2 3 4 5 6 7 8 9 10];
B = zeros(10);
for i=1:length(A)
    B(i) = A(i) + 10; 
end
for i=1:length(B)
    B(i) = B(i) * 10;
end
for i=1:length(B)
    B(i) = B(i) / 10;
end    
plot(A,B); 
grid on;