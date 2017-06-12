clear;

%***
dynamic = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Train\dynamicDro4.txt');
static = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Train\staticDro4.txt');
%***

%***
identity=1;
%***

[fsvm,warp] = extractGait(dynamic,static,identity);
save ('SVM.txt','fsvm','-append','-ascii');
load('SVM.txt')
