function [v, w] = vanishpoints(corners)
p1 = [corners(:,1);1];
p2 = [corners(:,2);1];
p3 = [corners(:,3);1];
p4 = [corners(:,4);1];

% Calculer les deux points de fuite à partir des quatre coins
v = cross(cross(p1,p2), cross(p3,p4)); % Le point de fuite vertical
v = v(1:2)./v(3); % Normaliser les coordonnées en divisant par la coordonnée homogène

w = cross(cross(p1,p4), cross(p2,p3)); % Le point de fuite horizontal
w = w(1:2)./w(3); % Normaliser les coordonnées en divisant par la coordonnée homogène

% Dessiner les lignes reliant les coins aux points de fuite pour vérification visuelle

for i = 1:4
    line([v(1);corners(1,i)],[v(2);corners(2,i)]);
    line([w(1);corners(1,i)],[w(2);corners(2,i)]);
end