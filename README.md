# GENERATING ADAPTIVE AND ROBUST FILTER SETS USING AN UNSUPERVISED LEARNING FRAMEWORK
This is a demonstration of the algorithm described in the paper "[GENERATING ADAPTIVE AND ROBUST FILTER SETS USING AN UNSUPERVISED LEARNING FRAMEWORK](https://ghassanalregibdotcom.files.wordpress.com/2016/10/prabhushankar2017_icip1.pdf)". The code provides a method to control the correlation property of weights when learning a sparse autoencoder.   

You can change this program as you like and use it anywhere, but please refer to its original source ([cite](https://ghassanalregibdotcom.files.wordpress.com/2018/03/mohit_icip2017-bib.zip) our [paper](https://ghassanalregibdotcom.files.wordpress.com/2016/10/prabhushankar2017_icip1.pdf) and our web page at
https://ghassanalregib.com/unique-unsupervised-image-quality-estimation-2/).

### Usage :  

Code for both Image Quality Assessment and Texture Retrieval are provided in separate folders.  
For each application, run the demo.m file. Sample original and distorted images (for IQA) and sample texture images are provided in separate folders (iqa and texture). Please copy these images into the main IQA and Texture folders and set the path accordingly in each demo.m file.  
For IQA : The code outputs the quality of the distorted image which lies between 0 and 1 (1 being the best quality).  
For Texture Retrieval : The code calculates the similarity between the provided 2 texture images between 0 and 1 (1 being the most similar).  

### ABSTRACT

In this paper, we introduce an adaptive unsupervised learning
framework, which utilizes natural images to train filter sets. The applicability
of these filter sets is demonstrated by evaluating their performance
in two contrasting applications - image quality assessment
and texture retrieval. While assessing image quality, the filters need
to capture perceptual differences based on dissimilarities between a
reference image and its distorted version. In texture retrieval, the
filters need to assess similarity between texture images to retrieve
closest matching textures. Based on experiments, we show that the
filter responses span a set in which a monotonicity-based metric can
measure both the perceptual dissimilarity of natural images and the
similarity of texture images. In addition, we corrupt the images in
the test set and demonstrate that the proposed method leads to robust
and reliable retrieval performance compared to existing methods.  

### Graphical Abstract

<p align="center">
  <img src=/Images/GraphicalAbstract.png/>
</p>  

### GENERATING ADAPTIVE AND ROBUST FILTER SETS USING AN UNSUPERVISED LEARNING FRAMEWORK

Demonstrating the controlled whitening process of data by visualizing covariance matrices and their corresponding learnt weights :

<p align="center">
  <img src=/Images/Control_FilterSets.png/>
</p> 

The results of the proposed method for IQA on LIVE, and TID13 databases :  

<p align="center">
  <img src=/Images/IQA_Results.png/>
</p> 

The results of the proposed method for Texture Retrieval on CUReT database :  

<p align="center">
  <img src=/Images/Texture_Results.png/>
</p> 

The robustness of the method evaluated on texture retrieval when AWGN is added to the texture images :

<p align="center">
  <img src=/Images/Robustness_Results.png/>
</p>

### Citation

IEEE Link : https://ieeexplore.ieee.org/document/8296841  
ArXiv Link : https://arxiv.org/abs/1811.08927  
