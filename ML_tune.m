[X,Y] = meshgrid([0 0.04 0.08 0.12 0.16 0.2],[200 300 400 500]);

Xq = 0:.005:0.2; Yq = 200:10:500;
[Xq,Yq] = meshgrid(Xq,Yq);

Z = [0.05827221 0.05280859 0.05407983 0.04494778 0.04209002 0.05155596;
    0.06048600 0.05564977 0.05170196 0.04617901 0.03746718 0.05166917;
    0.05711970 0.05038304 0.04481707 0.04076425 0.04238571 0.04813436;
    0.06078363 0.05479686 0.04990117 0.03917367 0.03692328 0.05038491;]

Zq = interp2(X,Y,Z,Xq,Yq,'spline');
figure
surf(Xq,Yq,Zq)
xlabel('ML thresh');
ylabel('# Shares');
zlabel('Objective')
title('Tuning of ML Buy algorithm', 'FontSize', 14);



surf(X,Y,Z)

