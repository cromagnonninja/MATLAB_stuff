x = round(rand(1,8));
in = stairs(x);
set(in, 'LineWidth', 3);

nx=size(x,2);
sign=1;
i=1;
while i<nx+1
    t = i:0.001:i+1-0.001;
    if x(i)==1
        unipolar_code=square(t*2*pi,100);
        polar_code=square(t*2*pi,100);
        bipolar_code=sign*square(t*2*pi,100);
        sign=sign*-1;
        manchester_code=-square(t*2*pi,50);
    else
        unipolar_code=0;
        polar_code=-square(t*2*pi,100);
        bipolar_code=0;
        manchester_code=square(t*2*pi,50);
    end
end

