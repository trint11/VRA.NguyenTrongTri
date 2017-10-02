function Recognition002_Digits()
fprintf (' \n Load du lieu train');
imgTrainAll = loadMNISTImages( './train-images.idx3-ubyte');
lblTrainAll = loadMNISTLabels( './train-labels.idx1-ubyte');
fprintf('\n Load du lieu test');
imgTestAll = loadMNISTImages ('./t10k-images.idx3-ubyte');
lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');

nTrainImages = size (imgTrainAll,2);
nTrainLables = size (lblTrainAll,1);
nTestImages = size (imgTestAll, 2);
nTestLabels = size (lblTestAll,1);
nsizefImage = size (imgTrainAll, 1);

fprintf ('\n so luong anh Train : [%d].',  nTrainImages);
fprintf ('\n so luong anh Train : [%d].',  nTrainLables);
fprintf ('\n so luong anh Test : [%d].',  nTestImages);
fprintf ('\n so luong anh Test : [%d].',  nTestLabels);
fprintf ('\n Kich thuoc cua mot anh: [%d].', nsizefImage);

end

