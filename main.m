clc
clear all
h_pe=1;h_ps=1;h_pi=1;h_sp=1;h_ip=1;
tau2_pe = 1;tau2_ps = 1; tau2_pi = 1; tau2_sp = 1; tau2_ip = 1;  
alpha_pe = 1;alpha_ps = 1;alpha_pi = 1;alpha_sp = 1;alpha_ip = 1;
    % Discretization parameters
    delta_t = 0.1;  
    num_steps = 100;  
    B=0;
    
    % Initial conditions
    x = zeros(10, num_steps + 1);  
    
    % Set initial conditions
    x(:, 1) = [6,2,8,9,1,0,4,4,9,1];  
    
    % Discretize the system using Euler's method
    for k = 1:num_steps

        X = x(:, k);
        g_x = zeros(1, 3);  
        x(:, k + 1) = X + delta_t * system_equations(X, alpha_pe, alpha_ps, alpha_pi, alpha_sp, alpha_ip, g_x, tau2_pe, tau2_ps, tau2_pi, tau2_sp, tau2_ip, h_pe, h_ps, h_pi, h_sp, h_ip,B);
    end
    
    % Plot the results
    time_vector = 0:delta_t:(num_steps * delta_t);
    figure;
    plot(time_vector, x');
    xlabel('Time');
    ylabel('State Variables');
    legend('X1', 'X2', 'X3', 'X4', 'X5', 'X6', 'X7', 'X8', 'X9', 'X10');
    title('Simulation of the Discretized Dynamical System (Euler''s Method)');