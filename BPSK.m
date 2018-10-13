b=randi([0,1],100,1);
t = 0:0.00001:0.00099;
f1 = 1000;

subplot(2,1,1);
stairs(b);

sa1=sin(2*pi*f1*t);
E1 = sum(sa1.^2);
sp0=-sin(2*pi*f1*t)/sqrt(E1);
sp1=sin(2*pi*f1*t)/sqrt(E1);

psk = [];
for i=1:100
    if b(i)==1
        psk=[psk sp1];
    else
        psk=[psk sp0];
    end
end

tb=0:0.01:99.99;

subplot(2,1,2);
plot(tb, psk(1:length(tb)),'k','linewidth',1.5)
title('PSK Modulation');grid on
xlabel('Time');
ylabel('Amplitude');
