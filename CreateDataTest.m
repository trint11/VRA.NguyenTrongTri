function CreateDataTest()
    imgTestAll = loadMNISTImages('t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('t10k-labels.idx1-ubyte');
    nTestImages = size(imgTestAll, 2);
    
    for i=0:9
       mkdir(['DataTest/' num2str(i)]); 
    end
    
    index = zeros(1, 10);
    for i=1:nTestImages
       imgI = imgTestAll(:,i);
       img2D = reshape(imgI, 28, 28);
       category = lblTestAll(i);
       strFileName = ['image_' num2str(index(1, category + 1), '%05d') '.jpg'];
       strPath = ['DataTest/' num2str(category) '/' strFileName];
       
       imwrite(img2D, strPath);
       index(1, category + 1) = index(1, category + 1) + 1;
    end
end