clear all;
close all;
clc;
f=input('Enter frequency');
%T=1/f;
fs1=input('Enter the sampling frequency');
fs2=input('Enter the sampling frequency');
fs3=input('Enter the sampling frequency');
t=0:0.1:100;
t1=0:1:99;

x=sin(2*3.14*f*t);
subplot(7,1,1);
plot(t,x);

y=sin(2*3.14*f*t1/fs1);
subplot(7,1,2);
stem(t1,y);
subplot(7,1,3);
stairs(t1,y);

y=sin(2*3.14*f*t1/fs2);
subplot(7,1,4);
stem(t1,y);
subplot(7,1,5);
stairs(t1,y);

y=sin(2*3.14*f*t1/fs3);
subplot(7,1,6);
stem(t1,y);
subplot(7,1,7);
stairs(t1,y);