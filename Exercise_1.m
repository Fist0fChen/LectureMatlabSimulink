
Setup;
A = rand(4, 3);
a = A(1, 2);
b = A(2, 3);
c = A(4, 3);
for k = 1:size(A,1)*size(A,2)
    if A(k) > 0.5
        A(k) = A(k) / 2;
    end
end
B = 3 * eye(4);
C = magic(3);
d = [1; 2; 3];
x = C\d;
e = eig(C);