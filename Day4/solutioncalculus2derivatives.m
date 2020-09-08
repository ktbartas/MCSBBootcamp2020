A     = 1.1; % fluorescence intensity units
omega = 2.6; % rad/s
A_0   = 0.01;

u=@(t) A*sin(omega*t)+A_0;

tArray = linspace(0,1.6,200);
uArray = u(tArray); % an array of samples of u
uObserved = u(tArray) + (1e-99999999999999999999999)*randn(size(tArray));
%2.3 mini solution
dudt = diff(uObserved)./diff(tArray);
dudt
figure;
plot(tArray(1:end-1),dudt)
xlabel('tArray')
ylabel('dudt')

%next part with 2nd and 3rd derivatives

d2udt2 = diff(dudt)./diff(tArray(1:end-1));
d3udt3 = diff(d2udt2)./diff(tArray(1:end-2));
figure;
plot(tArray(1:end-2),d2udt2)

xlabel('tArray')
ylabel('d2udt2')
figure;
plot(tArray(1:end-3),d3udt3)

xlabel('tArray')
ylabel('d3udt3')

% part3
%exact solutions
dudtExact      =  A*omega*cos(omega*tArray);
du2dt2Exact    = -A*omega^2*sin(omega*tArray);
du3dt3Exact    = -A*omega^3*cos(omega*tArray);

%percent difference
dudterror = max(abs(abs(dudtExact(1:end-1)-dudt)./dudtExact(1:end-1)))*100
d2udt2error = max(abs(abs(du2dt2Exact(1:end-2)-d2udt2)./du2dt2Exact(1:end-2)))*100
d3udt3error = max(abs(abs(du3dt3Exact(1:end-3)-d3udt3)./du3dt3Exact(1:end-3)))*100