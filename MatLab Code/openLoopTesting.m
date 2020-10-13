function openLoopTesting
G = LRC;
disp("Transfer function of G is:");
G

% Step response
figure;
step(G)

% Poles
poles = pole(G)

% % Bode diagram
figure;
bode(G)
% 
% % Nyquist diagram
figure;
nyquist(G)
% 
% % Root locus
figure;
rlocus(G)

% bode diagram with phase and gain margins
% figure;
% margin(G)

% closed loop without controller
% F  = G /(1+G);
% step(F);
% polesF = pole(F)


end