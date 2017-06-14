clear;

%***
dynamic = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Test\dynamicDro6.txt');
static = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Test\staticDro6.txt');
%***

%***
identity=9;
%***

[fsvm,warp] = extractGait(dynamic,static,identity);
save ('SVM.txt','fsvm','-append','-ascii');
load('SVM.txt')
