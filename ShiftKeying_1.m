b=randi([0,1],100,1);
f1=1;f2=2;
t=0:0.01:0.99;

sa1=sin(2*pi*f1*t);
E1=sum(sa1.^2);
sa1=sa1/sqrt(E1);  
sa0=0*sin(2*pi*f1*t);

sf0=sin(2*pi*f1*t);
E=sum(sf0.^2);
sf0=sf0/sqrt(E);
sf1=sin(2*pi*f2*t);
E=sum(sf1.^2);
sf1=sf1/sqrt(E);

sp0=-sin(2*pi*f1*t)/sqrt(E1);
sp1=sin(2*pi*f1*t)/sqrt(E1);

ask=[];psk=[];fsk=[];
for i=1:100
    if b(i)==1
        ask=[ask sa1];
        psk=[psk sp1];
        fsk=[fsk sf1];
    else
        ask=[ask sa0];
        psk=[psk sp0];
        fsk=[fsk sf0];
    end
end

subplot(4,1,1)
stairs(b,'linewidth',1.5);
title('Message Bits');
grid on
subplot(4,1,2)
tb=0:0.01:99.99;
plot(tb, ask(1:length(tb)),'b','linewidth',1.5)
title('ASK Modulation');grid on
subplot(4,1,3)
plot(tb, fsk(1:length(tb)),'r','linewidth',1.5)
title('FSK Modulation');grid on
subplot(4,1,4)
plot(tb, psk(1:length(tb)),'k','linewidth',1.5)
title('PSK Modulation');grid on
xlabel('Time');
ylabel('Amplitude');
