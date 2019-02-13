%% Demo Program to calculate similarity between 2 images
% demo.m reads 2 texture images and finds the similarity between them

clear

query = imread('Sample Images/image1.jpg');
target = imread('Sample Images/image2.jpg');

colorSimilarity = mslMainColor(query,target);