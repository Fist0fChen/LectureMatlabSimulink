%Exercise 2
Setup;
deltat = 0.01;
trange = 0:deltat:2;
trange = trange';
n = size(trange,1);

y1 = zeros(n,1);
y1(1) = 1;
dy1 = @(t, y) t.^2 - y.^2;
for k = 1:n-1
    deltay = deltat * dy1(trange(k), y1(k));
    y1(k+1) = y1(k) + deltay;
end

y2 = zeros(n,1);
y2(1) = 1;
dy2 = @(t, y) t - abs(y);
m = 1;
while m < n
    deltay = deltat * dy2(trange(m), y2(m));
    y2(m + 1) = y2(m) + deltay;
    m = m + 1;
end

figure('Name', 'Matlab Simulink Lecture Exercise 2', 'NumberTitle', 'Off')

subplot(2,1,1)
plot(trange, y1)
grid on
title('dy/dt = t^2 - y^2')

subplot(2,1,2)
plot(trange, y2)
grid on
title('dy/dt = t - |y|')
