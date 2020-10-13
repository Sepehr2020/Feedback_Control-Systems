function K = PIDControl
    s = tf('s');
    G = LRC;

% Negative Feedback System
    % PID design1
    Kp = 0;
    Kd = 0;
    Ki = 0;
    
    I = Ki/s;
    D = Kd*s;
    P = Kp;
    
    K = P+I+D;
    
    % % Closed loop
    F = G*K/(1+G*K);
    disp("Closed loop poles are")
    pole(F)
    
    step(F)
    hold on;
    step(G)
    legend('F','G');

end
