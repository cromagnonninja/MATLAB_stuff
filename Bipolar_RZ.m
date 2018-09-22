clf;
n=1;
h = round(rand(1,8));
l = length(h);
h(l+1)=1;
while n<=length(h)-1
    t=n-1:0.001:n;
    subplot(2,1,1);
    p = stairs(h);
    set(p,'LineWidth',2.5);
if h(n) == 0
    if h(n+1)==0  
        y=-(t<n-0.5)-(t==n);
    else
        y=-(t<n-0.5)+(t==n);
    end
    subplot(2,1,2);
    d=plot(t,y);grid on;
    title('Line code BIPOLAR RZ');
    set(d,'LineWidth',2.5);
    hold on;
else
    if h(n+1)==0
        y=(t<n-0.5)-1*(t==n);
    else
        y=(t<n-0.5)+1*(t==n);
    end
    subplot(2,1,2);
    d=plot(t,y);grid on;
     title('Line code BIPOLAR RZ');
    set(d,'LineWidth',2.5);
    hold on;
end
n=n+1;
end