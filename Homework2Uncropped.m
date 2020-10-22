clear all
close all
clc

m = 243;
n = 320;

total = 165;

avg = zeros(m*n,1);  % the average face
A = [];

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/yalefaces_uncropped/yalefaces/'; 
Imgs = dir(myFolder);
for j=1:length(Imgs)
    thisname = Imgs(j).name;
    thisfile = fullfile(myFolder, thisname);
    try
      Img = imread(thisfile);  % try to read image
      Im = Img(:,:,1);  
      imshow(Im);
      M = double(Im(:,:,1));
    
      R = reshape(M,m*n,1);
      A = [A,R];
      avg = avg + R;
      count = count + 1; 
    catch
    end

end

avg = avg/total;
avgface = mean(A,2);
Mat = A - avg;
[U,S,V] = svd(Mat,0);

figure
imagesc(reshape(avgface,m,n)),
colormap(gray(255));

semilogy(diag(S), 'k', 'Linewidth',2);