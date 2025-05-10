% Jonah Spector
% ECE 103

%% Exercise 1

% a

A = 1:10;

for n=1:10
    A(n) = log(A(n));
end

% b

B = 1:10;

for n=1:10
    B(n) = 2*n - 1;
end

% c

C = 1:10;

for n=1:10
    C(n) = sqrt(2*n);
end

% d

subplot(2,2,1)
plot(A, ".")
title("log()")
grid on

subplot(2,2,2)
plot(B, ".")
title("odd")
grid on

subplot(2,2,3)
plot(C, ".")
title("sqrt(even)")
grid on

subplot(2,2,4)
plot(A, ".")
hold on
plot(B, "^")
plot(C, "*")
title("All together")
legend("log()","odd","sqrt(even)")
grid on
hold off

%% Exercise 2

img_num = 1:360;

for i=1:360
    img_num(i)=exp(2*pi*i*1i/360);
end

plot(img_num)
title("e^{i\theta}")
ylabel("Img")
xlabel("Real")
grid on

%% Exercise 3

nested_mat = zeros(10);

for i=1:10
    for k=1:10
        nested_mat(i,k)=i+k;
    end
end

%% Exercise 4

A = [1    6 -12  3;
     1   -3   0  0;
     -3 -14   0 10;
     6    3   5  5];
b = [-20; 12; 0; 15];

Ax = A; Ay = A; Az = A; Aw = A;

Ax(:,1) = b;
Ay(:,2) = b;
Az(:,3) = b;
Aw(:,4) = b;

detA = det(A);

cramer_x = det(Ax)/detA;
cramer_y = det(Ay)/detA;
cramer_z = det(Az)/detA;
cramer_w = det(Aw)/detA;

%% Exercise 5

x = inv(A) * b;
