function [P,s]=H2P(H,K)
    Rt = inv(K) * H;
    n = norm(Rt(:,1));
    Rt = Rt / n;
    
    s = norm(Rt(:,2)) / norm(Rt(:,1));
    r1 = Rt(:,1);
    r2 = Rt(:,2) / s;
    r3 = cross(r1, r2);
    t = Rt(:,3);
    
    P = K * [r1 r2 r3 t];
    P = P / P(3,4);
end