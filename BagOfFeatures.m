rootFolder = fullfile('DataTrain');
categories = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
imds = imageDatastore(fullfile(rootFolder, categories), 'LabelSource', 'foldernames');
tbl01 = countEachLabel(imds);
minSetCount = min(tbl01{:,2});
imds = splitEachLabel(imds, minSetCount, 'randomize');
tbl02 = countEachLabel(imds);
load('bag.mat');
img = readimage(imds, 1);
featureVector = encode(bag, img);
figure
bar(featureVector)
title('Visual word occurrences')
xlabel('Visual word index')
ylabel('Frequency of occurrence')
load('categoryClassifier.mat');
rootFolder = fullfile('DataTest');
categories = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
imds = imageDatastore(fullfile(rootFolder, categories), 'LabelSource', 'foldernames');
tbl01 = countEachLabel(imds);
confMatixTest = evaluate(categoryClassifier, imds);
mean(diag(confMatixTest));