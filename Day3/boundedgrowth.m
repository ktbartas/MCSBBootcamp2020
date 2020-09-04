close all
clear all
clc
%bounded growth
%part C model of equation 2
% Declare Variables
r = 0.1;
K = 0.6;
nmax = 70;

% ICs
x = zeros(nmax,1);
y = x;
x(1) = 0.2;
y(1) = 0.1;

% Part a
for n = 1:nmax-1
   x(n+1) = x(n)+ r* x(n)* (1- x(n)/K);

end

% Part b
figure
plot(1:nmax,x,'-o','linewidth',1.5)
xlabel('n','fontsize',12)
ylabel('x','fontsize',12)
title(['r = ',num2str(r),' K = ',num2str(K)])