function [P,s]=H2P(H,K)
Rt = inv(K)*H;
n = norm(Rt(:,1));
Rt = Rt/n;
r1 = Rt(:,1);
r2 = Rt(:,2);
r3 = cross(r1,r2);
t = Rt(:,3);
P = K*[r1 r2 r3 t];
P = P/P(3,4);
s = sign(det([r1 r2 t]));
end