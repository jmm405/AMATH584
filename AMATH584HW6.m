test = load('mnist_test.csv');
%Create matrices for test images and labels
test_images = test(:,2:785);
test_labels = test(:,1);
%Create matrices for train images and labels
train = load('mnist_train.csv');
train_images = train(:,2:785);
train_labels = train(:,1);

figure
for i = 1:25
    subplot(5,5,i)
    digit = reshape(train_images(i, :), [28,28])';
    imagesc(digit)
end

tr_labels = categorical(train_labels);
classes = ["1","2","3","4","5","6","7","8","9","0",];
B_train = onehotencode(tr_labels,2);
size(B_train);

te_labels = categorical(test_labels);
classes = ["1","2","3","4","5","6","7","8","9","0",];
B_test = onehotencode(te_labels,2);
size(B_test);



f = B_train;

a1=pinv(train_images)*B_train; f1=train_images*a1; 

a2=train_images\f; f2=train_images*a2;

[a3,stats3]=lasso(train_images,train_labels,'Lambda', .01);  


[a4,stats4]=lasso(train_images,train_labels,'Lambda', .05); 


phi2 = train_images(:,2:784);
a6=ridge(train_labels,phi2,0.5,0);

figure(2), subplot(2,2,1)
A1 = flipud(reshape(a1,28,[])); pcolor(A1)

figure(2), subplot(2,2,1)
A2 = flipud(reshape(a2,28,[])); pcolor(A2)

figure(2), subplot(2,2,1)
A3 = flipud(reshape(a3,28,[])); pcolor(A3)

figure(2), subplot(2,2,1)
A4 = flipud(reshape(a4,28,[])); pcolor(A4)

zed = test_images*a1;

[rows, columns] = size(zed);
for row = 1 : rows
  [maxValue, indexOfMax] = max(zed(row, :));
  zed(row, indexOfMax) = 1;
end

close = [];
for i = 1:10
    check = zed(:,i) - B_test(:,i);
    check2 = check(check == 0);
    ones = B_test(:,i);
    ones2 = ones(ones == 1);
    [total,col] = size(ones2);
    [n,m] = size(check2);
    n;
    accuracy = n/total;
    close = [close ; accuracy]
end

total_acc = sum(close)/10
bar(close)

zed2 = test_images*a2;

[rows, columns] = size(zed2);
for row = 1 : rows
  [maxValue, indexOfMax] = max(zed2(row, :));
  zed2(row, indexOfMax) = 1;
end

close2 = [];
for i = 1:10
    check = zed2(:,i) - B_test(:,i);
    check2 = check(check == 0);
    ones = B_test(:,i);
    ones2 = ones(ones == 1);
    [total,col] = size(ones2);
    [n,m] = size(check2);
    n;
    accuracy = n/total;
    close2 = [close2 ; accuracy]
end

total_acc2 = sum(close2)/10
bar(close2)


lassoPlot(a3,stats3)

close3 = [];
for i = 1:10
    [a3,stats3]=lasso(train_images,B_train(:,i),'Lambda', .01); 
    zed3 = test_images*a3;
    check = zed3 > .175;
    check2 = check + B_test(:,i);
    col1 = B_test(:,i);
    tot = col1(col1 == 1);
    correct = check2(check2 == 2);
    accuracy = size(correct)/size(tot);
    close3 = [close3 ; accuracy]
end

total_acc3 = sum(close3)/10
bar(close3)


imp = a3(a3~=0);
imp2 = abs(imp);
imp3 = imp2 >= .001;
important = imp3(imp3~=0);
size(important)

%EXPLORATORY PCA RECONSTRUCTION

trainmean = mean(train_images)
train_tilde = train_images - trainmean;
M = (train_tilde'*train_tilde)/(59999);
[evec, eval] = eig(M);
total = sum(sum(eval));
eval = max(eval);

k = 104;
Vk = evec(:,((784-(k-1)):784));

test_tilde = test_images-trainmean;
test_k = test_tilde*Vk;
test_tilde_k = test_k*Vk';

sample = 1;
figure(3)
subplot(1,2,1)
imagesc(reshape(test_tilde(sample,:),[28,28]));
axis on
title("Original image sample")
subplot(1,2,2)
imagesc(reshape(test_tilde_k(sample,:),[28,28]));
axis off
title(sprintf("Reconstruction using %i eigenvectors",k))

H = (test_tilde'*test_tilde)/(9999);
[evec_test, eval_test] = eig(H);
total_test = sum(sum(eval_test));
eval_test = max(eval_test);

accuracy = sum(eval_test((748-k):784))/total_test