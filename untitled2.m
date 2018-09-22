t=0:0.01:100;
f = 5000;
fs = 100;
x=sin(2*3.14*(f/fs)*t);
subplot(3,1,1);
y1 = stem(t,x);
subplot(3,1,2);
y2 = stair(t,x);
temp = y2;
% delta is 1+1 / 2^4 = 0.125
delta = 0.125;
step = -1:8:1;

for i=0:0.01:100
   if(abs(temp(i) + 1) < abs(temp(i) + 0.75))
       temp(i) = -1; 
   else if(abs(temp(i) + 0.75) < abs(temp(i) + 0.5)) 
        temp(i) = -0.75;   
       end
   else if(abs    
       
   end     
end
