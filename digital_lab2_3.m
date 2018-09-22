t = 0:0.01:1;
y = t.^3;
Am = 1;
bit=3;
Nsamples=length(y); %calculating the total number of samples
quantised_out=zeros(1,Nsamples); %making an array of size=number of samples
%midrise
del=2*Am/(2^bit); %determining the step size
Llow=-Am+del/2;
Lhigh=Am-del/2;

for i=Llow:del:Lhigh %Iterating from lowest to the highest levels

    for j=1:Nsamples %taking the whole sampled vector
     if(((i-del/2)<y(j))&&(y(j)<(i+del/2)))        % Quantizing the sampled value 
        quantised_out(j)=i;                        % to the quantization level if it 
     end                               % lies within the bound of -del/2 and
    end                                % del/2 of the level.
end
plot(t,y);
hold on;
stairs(t,quantised_out); %plotting wave forms.
hold on;
snr(quantised_out,quantised_out - y)