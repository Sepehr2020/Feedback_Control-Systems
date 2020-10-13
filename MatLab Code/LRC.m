function G = LRC
clc; close all;
s = tf('s');

% To do: insert values for L, R, C
L = 0;
R = 0;
C = 0;

% Impedance values for each component
Zl = L*s;
Zc = 1/(C*s);
Zr = R;


% To do: insert transfer function in terms of impedance values
G = %%FILL IN
G = minreal(G); %%reduces transfer function to its simplest form
end