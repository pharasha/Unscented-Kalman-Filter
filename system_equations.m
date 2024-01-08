function dx = system_equations(X, alpha_pe, alpha_ps, alpha_pi, alpha_sp, alpha_ip, g_x, tau2_pe, tau2_ps, tau2_pi, tau2_sp, tau2_ip, h_pe, h_ps, h_pi, h_sp, h_ip,B)

    
    X1 = X(1);
    X2 = X(2);
    X3 = X(3);
    X4 = X(4);
    X5 = X(5);
    X6 = X(6);
    X7 = X(7);
    X8 = X(8);
    X9 = X(9);
    X10 = X(10);
    
   
    dx = [
        X2;
        ((-1/(tau2_pe^2)) * X1 -2*h_pe*X2 +(1/tau2_pe^2) * alpha_pe * B);
        X4;
        ((-1/(tau2_ps^2)) * X3 -2*h_ps*X4 +(1/tau2_ps^2) * alpha_ps *g_x(1));
        X6;
        ((-1/(tau2_pi^2)) * X5 -2*h_pi*X6 +(1/tau2_pi^2) * alpha_pi *g_x(1));
        X8;
        ((-1/(tau2_sp^2)) * X7 -2*h_sp*X8 +(1/tau2_sp^2) * alpha_sp *g_x(2));
        X10;
        ( (-1/(tau2_ip^2)) * X9 -2*h_ip*X10 +(1/tau2_ip^2) * alpha_ip *g_x(3));
    ];

end