b = [6 0 1];
a = [1 3 3 1];
fvtool(b,a,'polezero');
[b,a]= eqtflength(b,a);
[z,p,k] = tf2zp(b,a)