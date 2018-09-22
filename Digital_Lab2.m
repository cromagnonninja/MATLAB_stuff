t = 0:0.001:1;
m = sin(2*3.14*t);
y1 = abs(m);
u = 100;
v1 = log(1 + u * abs(m)) / log(1 + u); 
%plot(t,m);
%%hold on;
%stairs(t,m);
%hold on; 
%stairs(t,v1);

snr(v1,m)
%hold on;
%stairs(t,m);
%hold on;
%stairs(t,v1);
%hold on;
