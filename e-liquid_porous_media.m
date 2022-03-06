clear all; 
clc;
%% 符号设置
% s(x)饱和度 u(x)流体流速 x距离中心发热区的距离 Js(Sr)Udell函数 Sr(x)
syms s(x) u(x) x real;
syms Js(Sr) Sr(x) s_ir pc(x) epsilon K sigma u(x) mu_l real;
syms q_hs h_fg rho_l delta_L real;
syms u_q L real;

%% 基本参数
L = 25/1000; delta_L = 0.5/1000; rho_l = 972; sigma = 6.26*10^(-2); h_fg = 2256*10^3; mu_l = 3.55*10^(-4);
q_hs = 15*10^5; epsilon = 0.7565; K = 1.4962*10^(-10); s_ir = 0.2;

%% 参数化
% syms L delta_L rho_l sigma h_fg mu_l q_hs epsilon K s_ir:
syms a b c1 c2 c3 c4 c5;
a = q_hs/(delta_L*h_fg*rho_l*sigma); b = K*sigma*sqrt(epsilon/K); c1= 1.42/(s_ir-1.0); 
c2= 4.42/(s_ir-1.0)^2; c3 = 7.58/3; c4 = 4.42/2; c5 = 3.79/3;

%% 质量方程
%eq0 = diff(u(x)*s(x),x) + q_hs/(h_fg*rho_l*delta_L*sigma);

%% 动量方程
%定义前面的函数
Sr(x) = (s(x)-s_ir)/(1-s_ir); %残余饱和度已知, Sr(x)是x的函数
Js(x) = 1.417*(1-Sr)-2.210*(1-Sr)^2+1.263*(1-Sr)^3; % Leverett函数,Js(x)是Sr的函数,也只是x的函数
pc(x) = sqrt(epsilon/K)*sigma*Js(x); %pc(x)毛细压力函数,也是x的函数
% 动量方程
u(x) = (K/mu_l)*(diff(pc(x),x)); %K为多孔介质的渗透率, mu_l为流体粘度, pc(x)是毛细压力, 引入Leverett函数pc(x)是Js(x)
% 质量方程
eq0 = diff(u(x)*s(x),x) + q_hs/(h_fg*rho_l*delta_L*sigma);
% 化简
eq0_0 = simplify(eq0);
eq0_0 = vpa(eq0_0,3);
pretty(eq0_0)

%% 边界条件
% 根据对称性, 中心处(x=0)的速率为0
eq1 = u(0)-0;
eq1_0 = simplify(eq1);
eq1_0 = vpa(eq1_0,3);
% 稳定流动条件，饱和度分布决定的进口速度应等于热流决定的进口速度
u_q = 1/(rho_l*delta_L*s(L)*sigma)*int(-q_hs/h_fg,x,0,L);
eq2 = u(L)-u_q;
eq2_0 = simplify(eq2);
eq2_0 = vpa(eq2_0,3);

%% 求解
tspan = [0:0.00001:0.025];
tolerance = 1e-2;
for i=0.001:0.001:1
    y0=[i,0]
    [t,y] = ode45(@(t,y)satu(t,y,a,b,c1,c2,c3,c4,c5,mu_l,s_ir),tspan,y0);
    y1 = y(:,1);
    y2 = y(:,2);
    eqns = (b*y2(length(y))*(1590*s_ir-3160*y1(length(y))+3790*y1(length(y))*y1(length(y))-4420*s_ir*y1(length(y))+1420*s_ir*s_ir+786)*0.001)/(mu_l*(s_ir-1)^3)+L*a/y1(length(y))
    if (abs(eqns) <= tolerance)
    break
    end   
end
subplot(1,2,1);
grid on;
plot(t,y(:,1),'x');
grid on;
hold on;
subplot(1,2,2);
grid on;
plot(t,y(:,2),'-');
grid on;
% 

% tspan = [0:0.0001:0.025];
% grid on;
% y0 = [0.2,0];
% [t,y] = ode45(@(t,y)satu(t,y,a,b,c1,c2,c3,c4,c5,mu_l,s_ir),tspan,y0);
% subplot(2,2,1);
% grid on;
% plot(t,y(:,1),'x');
% grid on;
% hold on;
% subplot(2,2,2);
% grid on;
% plot(t,y(:,2),'-');
% grid on;

function dydt = satu(t,y,a,b,c1,c2,c3,c4,c5,mu_l,s_ir)
% Saturation Function 
% 082664
dydt = [y(2); (a*mu_l*(s_ir-1)^3 + b*y(2)^2*(1590*s_ir-3160*y(1)+3790*y(1)^2-4420*s_ir*y(1)+1420*s_ir^2+780)*0.001+b*y(1)*(s_ir-1)^3*(c3*(y(1)-1)*y(2)^2-c2*y(2)^2))/(b*y(1)*(s_ir-1)^3*(c4*(y(1)-1)-c1-c5*(y(1)-1)^2))];
end