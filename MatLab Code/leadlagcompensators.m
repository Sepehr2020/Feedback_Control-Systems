function K = leadlagcompensators
s = tf('s');
G = LRC;
% margin(G);

% LAG compensator design
R2 = 0;
C2 = 0;
R1 = 0;

alpha = (R1+R2)/R2;
t2 = R2*C2;
lag = (1/alpha)*((s + 1/t2)/(s+1/(alpha*t2)));
% lag = 1;

% LEAD Compensator design
R3 = 0;
C3 = 0;
R4 = 0;

t3 = R3*C3;
beta = R4/(R3+R4);
% lead = beta*((s*t3 + 1)/(s*beta*t3+1));
lead = 1;

Kp = 1;

K = lead*lag*Kp;
F = G*K/(1+G*K);

figure;
nyquist(G);
hold on;
nyquist(K*G);

figure;
bode(G);
hold on;
bode(K);

figure;
step(F)
hold on;
step(G);
legend('F', 'G')

end