f2 = 50000;
f1 = 30000;
Fs = 100000;
t = 0:1/Fs:1-1/Fs;
x3 = 2*sin(2*3.14*f1*t) + 3*sin(2*3.14*f2*t);
periodogram(x3, hamming(length(x3)), [], Fs, 'centered', 'power')
