function Exercise_3_2()
    Setup;

    y1 = @(x) x.^2;
    y2 = @(x) (exp(-x)/(x.^2 + 1) + sin(x).^2).^2 + 0.2;

    x = -1:0.01:1;

    figure('Name','Matlab Simulink Lecture Exercise 3','NumberTitle','Off')
    subplot(2,1,1)
    plot(x, y1(x))
    grid on
    title('y = x^2')

    subplot(2,1,2)
    plot(x, y2(x))
    grid on
    title('y = (exp(-x)/(x.^2 + 1) + sin(x).^2).^2 + 0.2')
end