function demoHog()
    %% Load Data Train
	strData = 'train-images.idx3-ubyte';
	strDataLabel = 'train-labels.idx1-ubyte';
	[imgDataTrain,lblDataTrain] = loadData(strData,strDataLabel);
	
    img1D = imgDataTrain(:, 1968);
    img2D = reshape(img1D, 28, 28);
    subplot(2,5,1);
    imshow(img2D);
    [featuresVector, visualHog] = extractHOGFeatures(img2D, 'CellSize', [2 2]);
    subplot(2,5,2);
    plot(visualHog);
    
    [featuresVector, visualHog] = extractHOGFeatures(img2D, 'CellSize', [4 4]);
    subplot(2,5,3);
    plot(visualHog);
    
    [featuresVector, visualHog] = extractHOGFeatures(img2D, 'CellSize', [8 8]);
    subplot(2,5,4);
    plot(visualHog);
    
    subplot(2,5,5);
    histogram(featuresVector, 9);
    
    
     img1D = imgDataTrain(:, 1993);
    img2D = reshape(img1D, 28, 28);
    subplot(2,5,6);
    imshow(img2D);
    [featuresVector, visualHog] = extractHOGFeatures(img2D, 'CellSize', [2 2]);
    subplot(2,5,7);
    plot(visualHog);
    
    [featuresVector, visualHog] = extractHOGFeatures(img2D, 'CellSize', [4 4]);
    subplot(2,5,8);
    plot(visualHog);
    
    [featuresVector, visualHog] = extractHOGFeatures(img2D, 'CellSize', [8 8]);
    subplot(2,5,9);
    plot(visualHog);
    
    subplot(2,5,10);
    histogram(featuresVector, 9);
    
%     
%     
%     %%  Extract Features
% 	featuresDataTrain = ExtractFeaturesLBP(imgDataTrain);
% 	%%  Build model KNN
% 	Mdl = fitcknn(featuresDataTrain', lblDataTrain);
%     %%  Load Data Test
% 	strData = 't10k-images.idx3-ubyte';
% 	strDataLabel = 't10k-labels.idx1-ubyte';
% 	[imgDataTest,lblActualDataTest] = loadData(strData,strDataLabel);
% 	%%  Extract Features
% 	featuresDataTest = ExtractFeaturesLBP( imgDataTest);
%     %%  Save Result
% 	lblResult = predict(Mdl,featuresDataTest');
% 	nResult = (lblResult == lblActualDataTest);
% 	nCount = sum(nResult);
% 	fprintf('\nSo luong mau dung: %d\n',nCount);
end