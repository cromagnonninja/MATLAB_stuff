s = tf('s');
G1 = (1/500)*1/(s*s);
G2 = s*(s+2)/(s+1);
G = G1*G2; 
F = feedback(G,1);
F1 = minreal(F)
pole(F1)
zero(F1)
pzmap(F1)