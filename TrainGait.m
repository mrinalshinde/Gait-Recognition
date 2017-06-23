clear;

%***
dynamic = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Train\dynamicAzf1.txt');
static = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Train\staticAzf1.txt');
%***

%***
identity=9;
%***

[fsvm,warp] = extractGait(dynamic,static,identity);
save ('SVM.txt','fsvm','-append','-ascii');
load('SVM.txt')
