close all
clear all
clc

%bounded growth
%part g equation 2
% Declare Variables
K = 0.6;
nmax = 200;
Rs = linspace(0,3,nmax);
% placeholder
x = zeros(nmax,1);
x(1) = 0.2; %doesn't matter what x(1) is as long as it is not 0?

outputX = zeros(nmax,100);
% Part g
for reee=1:nmax-1
    r = Rs(reee)
for n = 1:nmax-1
   x(n+1) = x(n)+ r* x(n)* (1- x(n)/K);

end
outputX(reee,:) = x((end-size(outputX,2)+1):end); %this line i do not understand
end

% plot
figure; hold on;
plot(Rs,outputX,'.')
xlabel('Growth rate','fontsize',12)
ylabel('Population','fontsize',12)
title(['End-Population based on growth rate'])