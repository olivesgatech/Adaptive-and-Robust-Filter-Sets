function res = mslUNIQUEColor(img)

% Load mat files           
workspace = load('ImageNet_Weights_RGB_WithoutPreprocess.mat');
weight1 = workspace.W;
bias1 = workspace.b;

%% Weigh features based on edge or color 
weight_process = weight1(:,1:64);
weight_process = weight_process - (sum(weight_process(:))/length(weight_process(:)));
weight_process = weight_process./((ones(size(weight_process,1),1))*max(abs(weight_process)));

% Weights for features
kurt = kurtosis(weight_process,0,2);
Ind = find((kurt > 2.4));
Indices = ones(size(weight1,1),1);
Indices(Ind(1:length(Ind)),1) = 5;
Ind2 = find((kurt < 1.5));
Indices(Ind2(1:length(Ind2)),1) = 0.25;%0.1;

%% Process the images
res = processColor(img,weight1,bias1,Indices);

end