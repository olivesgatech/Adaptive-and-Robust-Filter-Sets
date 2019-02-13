function similarity = mslMainColor(query,target)

%% 
% Author:              Mohit Prabhushankar
% PI:                  Ghassan AlRegib
% Version:             1.0
% Published in:        IEEE International Conference on Image Processing (ICIP), 2017
% Publication details: M. Prabhushankar, D. Temel, and G. AlRegib, Generating Adaptive and Robust Filter Sets using an Unsupervised Learning Framework

% The authors are with OLIVES, Department of Electrical and Computer Engineering, Georgia Institute of Technology, Atlanta, GA.
% Kindly report any suggestions or corrections to mohit.p@gatech.edu

%%
% Function to measure color similarity between the target and query image
% query = Input image whose similarity to the target image is to be measured

%% Initialization
ScaleColor = 8;

%% Preprocessing - Scaling
qImg = im2double(query);
tImg = im2double(target);

temp1Color = imresize(qImg(:,:,1),[ScaleColor,ScaleColor]);
temp2Color = imresize(qImg(:,:,2),[ScaleColor,ScaleColor]);
temp3Color = imresize(qImg(:,:,3),[ScaleColor,ScaleColor]);
qImgColor = cat(3,temp1Color,temp2Color,temp3Color);

temp1Color = imresize(tImg(:,:,1),[ScaleColor,ScaleColor]);
temp2Color = imresize(tImg(:,:,2),[ScaleColor,ScaleColor]);
temp3Color = imresize(tImg(:,:,3),[ScaleColor,ScaleColor]);
tImgColor = cat(3,temp1Color,temp2Color,temp3Color);

%% Feature Extraction
featuresQuery = mslUNIQUEColor(qImgColor);
featuresTarget = mslUNIQUEColor(tImgColor);

%% Similarity Detection
similarity = CalcStats(featuresQuery,featuresTarget);

end