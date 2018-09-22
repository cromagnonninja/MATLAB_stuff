s = tf('s');
G1 = 1/(s+1);
G2 = 1/(s+1);
G3 = (s*s + 1)/(s*s + 4*s + 4);
G4 = (s+1)/(s+6);
H1 = (s+1)/(s+3);
H2 = 2;
H3 = 1;
sys1 = feedback(G3, H1*G4);
sys2 = sys1 * G2;
sys3 = feedback(sys2,H2);
sys4 = G1 * sys3 * G4;
sys5 = minreal(feedback(sys4,H3))
pzmap(sys5)
pole(sys5)
zero(sys5)
