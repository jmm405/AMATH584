close all; clear all; clc;
disp("PART 1")
disp("(a)")

M = tril(randn(10,10));
A = M + M' + eye(10);
[V,D] = eigs(A,10)

disp("---------------------------------------------------------------------------------------------------------")
disp("(b)")

u= [1;1;1;1;1;1;1;1;1;1]; % The initial choice of eigenvector.
n=length(u); % Size of initial eigenvector.
v=zeros(n,1);
eps= 0.001;
err=10;m1=1;m2=1;
 for k=1:100  %Calculating the greatest eigenvalue and the corresponding eigenvector.
   v=A*u; 
   m2=max(abs(v));
   u=v/m2;
   err=abs(m1-m2);
   m1=m2;
 end
fprintf('\n The greatest eigenvalue is %5.5f\n',m1);
disp('The corresponding eigenvector is:');
fprintf('\n %5.5f',u);
disp(" ")

disp("---------------------------------------------------------------------------------------------------------")
disp("(c)")

x = V(:,2) - 0.0001;

[evector, evalue] = RayQuot(A,x,1000,.001)




disp("---------------------------------------------------------------------------------------------------------")
disp("(d)")

B = randn(10,10);
[V,D] = eigs(B,10)


u= [1;1;1;1;1;1;1;1;1;1]; % The initial choice of eigenvector.
n=length(u); % Size of initial eigenvector.
v=zeros(n,1);
eps= 0.001;
err=10;m1=1;m2=1;
 for k=1:100  %Calculating the greatest eigenvalue and the corresponding eigenvector.
   v=B*u; 
   m2=max(abs(v));
   u=v/m2;
   err=abs(m1-m2);
   m1=m2;
 end
fprintf('\n The greatest eigenvalue is %5.5f\n',m1);
disp('The corresponding eigenvector is:');
fprintf('\n %5.5f',u);
disp(" ")

x = V(:,2) - 0.0001;

[evector, evalue] = RayQuot(B,x,1000,.001)

disp("----------------------------------------------------------------------------------------------")
disp("PART 2")
disp("(a)")

% Size of each picture
m = 168;
n = 192;

avg = zeros(m*n,1);  % the average face
A = [];
count = 0;
D = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale';
S = dir(fullfile(D,'*'));
N = setdiff({S([S.isdir]).name},{'.','..'}); % list of subfolders of D.
for ii = 1:numel(N)
    T = dir(fullfile(D,N{ii},'*')); % improve by specifying the file extension.
    C = {T(~[T.isdir]).name}; % files in subfolder.
    for jj = 1:numel(C)
        F = fullfile(D,N{ii},C{jj});
        % do whatever with file F.
        imageArray = imread(F);
        imshow(imageArray);  % Display image.
        drawnow; % Force display to update immediately.
        M = double(imageArray(:,:,1));
        
        R = reshape(M,m*n,1);
        A = [A,R];
        avg = avg + R;
        count = count + 1;

    end
end

faces = A' * A;

vec = ones(2432,1); % The initial choice of eigenvector.
n=length(vec); % Size of initial eigenvector.
v=zeros(n,1);
eps= 0.001;
err=10;m1=1;m2=1;
 for k=1:1000  %Calculating the greatest eigenvalue and the corresponding eigenvector.
   v=faces*vec; 
   m2=max(abs(v));
   u=v/m2;
   err=abs(m1-m2);
   m1=m2;
 end
fprintf('\n The greatest eigenvalue is %5.5f\n',m1);
disp('The corresponding eigenvector is:');
fprintf('\n %5.5f',u);
disp(" ")
s = svds(faces)

disp("----------------------------------------------------------------------------------------------")
disp("(b)")

[m,n] = size(A);
k = 100;
omega = randn(n,k);
Y = A*omega;

[Q,R] = qr(Y,0);
size(Q);

mat = (Q')*A;
[U,S,V] = svd(mat, 'econ');

uapprox = Q*U;
x = 1:length(uapprox(:,1));

figure(1)
plot(x,uapprox(:,1))

disp("----------------------------------------------------------------------------------------------")
disp("(c)")

[U2, S2, V2] = svd(A,'econ');
x2 = 1:length(U2(:,1));

figure(2)
plot(x2,U2(:,1))

svds(mat)
svds(A)


function [evector, evalue] = RayQuot(A,x,maxit,tol);

error = 1; it = 0; 
while (it < maxit & error > tol);
    y=A*x;
    evalue=x'*y/(x'*x);
    [~,maxidx]=max(abs(y));   % find element with the largest magnitude
    x=y/y(maxidx);
    out=[ it+1 x' evalue];
    error=norm(A*x-evalue*x);       
    it=it+1;
end
evector=x;
end






