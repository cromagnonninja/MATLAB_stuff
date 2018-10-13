clc;
clear all;
close all;
data=randi([0,1],100,1); % information
subplot(4,1,1);
stairs(data, 'linewidth',3), grid on;
title('  Information before Transmiting ');

data_NZR=2*data-1; % Data Represented at NRZ form for QPSK modulation
s_p_data=reshape(data_NZR,2,length(data)/2);  % S/P convertion of data
br=10.^6;
f=br; 
T=1/br; 
t=0:T/100:T-T/100;

y=[];
y_in=[];
y_qd=[];
for(i=1:length(data)/2)
    y1=s_p_data(1,i)*cos(2*pi*f*t); % inphase component
    y2=s_p_data(2,i)*sin(2*pi*f*t) ;% Quadrature component
    y_in=[y_in y1]; % inphase signal vector
    y_qd=[y_qd y2]; %quadrature signal vector
    y=[y y1+y2]; % modulated signal vector
end
Tx_sig=y;
tt=T/100:T/100:(T*length(data))/2;
subplot(4,1,2);
plot(tt,y_in,'linewidth',3), grid on;
title(' wave form for inphase component in QPSK modulation ');
xlabel('time(sec)');
ylabel(' amplitude(volt0');
subplot(4,1,3);
plot(tt,y_qd,'linewidth',3), grid on;
title(' wave form for Quadrature component in QPSK modulation ');
xlabel('time(sec)');
ylabel(' amplitude(volt0');
subplot(4,1,4);
plot(tt,Tx_sig,'r','linewidth',3), grid on;
title('QPSK modulated signal (sum of inphase and Quadrature phase signal)');
xlabel('time(sec)');
ylabel(' amplitude(volt0');
