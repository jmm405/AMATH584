clear all
close all
clc

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

avg = avg/count;
avgface = mean(A,2);
Mat = A - avg;
[U,S,V] = svd(Mat,0);
figure
imagesc(reshape(avgface,n,m)),
colormap(gray(255));

Phi = U(:,1:2*length(theFiles));
Phi(:,1) = -1*Phi(:,1);
figure()
count = 1;
for i=1:4
    for j=1:4
        subplot(4,4,count)
        imagesc(25000*reshape(U(:,count),n,m)),
        colormap(gray(255));
        count = count + 1;
    end
end

semilogy(diag(S), 'k', 'Linewidth',2);
