%PART I

clear all; close all; clc
m = 40;
n = 25;

A = rand(m,n);

B = A;
B(:,end)=A(:,1);

cond(B)
%Note, showing all three methods used for homework purposes, but only
%performing one select method
[Q,R] = qrfactor(B);
[Q,R] = modgs(B);
[Q,R] = qr(B);
% Choose one of these lines to perform the desired method

function [Q,R] =  modgs(A)
[m,n] = size(A);
Q = zeros(m,n);
R = zeros(n,n);
    
for k = 1:n
    Q(:,k) = A(:,k);
    for i = 1:k-1
        R(i,k) = Q(:,i)'*Q(:,k);
        Q(:,k) = Q(:,k) - R(i,k)*Q(:,i);
    end
    R(k,k) = norm(Q(:,k))';
    Q(:,k) = Q(:,k)/R(k,k);
end
end

%QR Factor from class
function [Q,R] = qrfactor(A)

[m,n] = size(A);
Q=eye(m);
for k = 1:n
    % Find the HH reflector
    z = A(k:m,k);
    v = [ -sign(z(1))*norm(z) - z(1); -z(2:end) ];
    v = v / sqrt(v'*v);   % remoce v'*v in den
    
    % Apply the HH reflection to each column of A and Q
    for j = 1:n
        A(k:m,j) = A(k:m,j) - v*( 2*(v'*A(k:m,j)) );
    end
    for j = 1:m
        Q(k:m,j) = Q(k:m,j) - v*( 2*(v'*Q(k:m,j)) );
    end
        
end

Q = Q';
R = triu(A);  % exact triangularity
end

%PART II

p_1 = @(x) (x.^9) - 18*(x.^8) + 144*(x.^7) - 672*(x.^6) + 2016*(x.^5) - 4032*(x.^4) + 5376*(x.^3) - 4608*(x.^2) + 2304*(x) - 512;
x = 1.920:.001:2.080
figure(1)
plot(x, p_1(x))

p_2 = @(x) (x-2).^9
figure(2)
plot(x,p_2(x))

%PART III

n = 3;
m = n+1;
A = randn(m,n);

cond(A)

B = A;
B(:,n+1)=A(:,1);
cond(B)
det(B)

noise=10^(-14);
C = B;
C(:,end) = B(:,end) + noise*rand(m,1)

