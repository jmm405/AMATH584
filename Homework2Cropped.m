clear all
close all
clc

m = 168;
n = 192;

avg = zeros(m*n,1);  % the average face
A = [];

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB01';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

count = 0;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    avg = avg + R;
    count = count + 1;

end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB02';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB03';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB04';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB05';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB06';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB07';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB08';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB09';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB10';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB11';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB12';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB13';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB15';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB16';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB17';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB18';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB19';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB20';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB21';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB22';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB23';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB24';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB25';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB26';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB27';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB28';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB29';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB30';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB31';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB32';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB33';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB34';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB35';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB36';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB37';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB38';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

;;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
   avg = avg + R;
   count = count + 1;
end

myFolder = '/Users/MillerJosh_/Documents/AMATH 584/CroppedYale/yaleB39';

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.pgm'); % Change to whatever pattern you need.
theFiles = dir(filePattern);

for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = [fullfile(theFiles(k).folder, baseFileName)];
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    imageArray = imread(fullFileName);
    imshow(imageArray);  % Display image.
    drawnow; % Force display to update immediately.
    M = double(imageArray(:,:,1));
    
    R = reshape(M,m*n,1);
    A = [A,R];
    ;
    avg = avg + R;
   count = count + 1;
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
