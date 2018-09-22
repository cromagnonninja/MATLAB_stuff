s = tf('s');
G1 = (1/500)*1/(s*s);
G2 = s*(s+2)/(s+1);
G = minreal(feedback(G1,G2))
pole(G)
zero(G)
pzmap(G)