function result = processColor(img,W,b,Ind)

%% Rotate the image 4 times and obtain the feature for each
result = [];

for rotImg = 1:4

I = imrotate(img,90*(rotImg-1));
    
%Convert m x n x 3 image into [(8x8x3) x count] patches
patch = reshape(I,[],1);
feature = W * patch + repmat(b,1,size(patch,2));
feature = feature.*(repmat(Ind,1,size(feature,2)));

feature = reshape(feature,[],1);
result = [result,feature];

end

% Concatenate all the features from each angle to 1 feature vector
result = reshape(result,[],1);

end