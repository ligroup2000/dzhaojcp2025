
Energy_Square_S_1e_4=load('GG_Square_1e_4.txt');
Energy_Square_CN_1e_4=load('GG_Square_1e_4_CN_kk10_epsilon0.txt');

Energy_Square_S_1e_4=Energy_Square_S_1e_4';Energy_Square_S_1e_4=Energy_Square_S_1e_4(:); Energy_Square_S_1e_4=Energy_Square_S_1e_4(1:20001);
Energy_Square_CN_1e_4=Energy_Square_CN_1e_4';Energy_Square_CN_1e_4=Energy_Square_CN_1e_4(:);Energy_Square_CN_1e_4=Energy_Square_CN_1e_4(1:20000);

tt=0:0.0001:2;
figure(1);  
plot(tt(1:2001),Energy_Square_S_1e_4(1:2001),'r-',tt(2:2001),Energy_Square_CN_1e_4(1:2000),'b--','linewidth',2);
legend('Scheme-LF','Scheme-CN');
title('Square domain');
figure(2)
plot(tt,Energy_Square_S_1e_4,'r-',tt(2:20001),Energy_Square_CN_1e_4,'b--','linewidth',2);
legend('Scheme-LF','Scheme-CN');
title('Square domain');


Energy_Lshape_S_1e_4=load('GG_Lshape_1e_4.txt');
Energy_Lshape_CN_1e_4=load('GG_Lshape_1e_4_CN_kk10_epsilon0.txt');

Energy_Lshape_S_1e_4=Energy_Lshape_S_1e_4';Energy_Lshape_S_1e_4=Energy_Lshape_S_1e_4(:);Energy_Lshape_S_1e_4=Energy_Lshape_S_1e_4(1:20001);
Energy_Lshape_CN_1e_4=Energy_Lshape_CN_1e_4';Energy_Lshape_CN_1e_4=Energy_Lshape_CN_1e_4(:);Energy_Lshape_CN_1e_4=Energy_Lshape_CN_1e_4(1:20000);

figure(3);  
plot(tt(1:2001),Energy_Lshape_S_1e_4(1:2001),'r-',tt(2:2001),Energy_Lshape_CN_1e_4(1:2000),'b--','linewidth',2);
legend('Scheme-LF','Scheme-CN');
title('Lshape domain');
figure(4)
plot(tt,Energy_Lshape_S_1e_4,'r-',tt(2:20001),Energy_Lshape_CN_1e_4,'b--','linewidth',2);
legend('Scheme-LF','Scheme-CN');
title('Lshape domain');

%tau=1e-04
square_cpu_LF=[1119.984  2377.827  3535.078  4731.564  5869.794  7016.303];
square_cpu_CN=[3083.3  6105.873  9091.254  11811.988  14294.324  17241.716];

Lshape_cpu_LF=[948.103  1919.426  2836.193  3805.987  4752.947  5721.668];
Lshape_cpu_CN=[3773.843  7496.887  11041.084  14130.062  17730.481  20808.79];
cpu_t=0.2:0.2:1.2;
figure(5)
plot(cpu_t,square_cpu_LF,'*-',cpu_t,square_cpu_CN,'o-','linewidth',2);
legend('Scheme-LF','Scheme-CN');
title('Square domain');
figure(6)
plot(cpu_t,Lshape_cpu_LF,'*-',cpu_t,Lshape_cpu_CN,'o-','linewidth',2);
legend('Scheme-LF','Scheme-CN');
title('Lshape domain');