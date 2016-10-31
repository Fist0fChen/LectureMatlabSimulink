%Exercise 2
Setup;
deltat = 0.01;
trange = 0:deltat:2;
dy = @(t, y) t.^2 - y.^2;
n = size(trange,1);
y = zeros(n,1);
for t = trange
    
end