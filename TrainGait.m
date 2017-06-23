clear;

%***
dynamic = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Train\dynamicTanmai9.txt');
static = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Train\staticTanmai9.txt');
%***

%***
identity=8;
%***

[fsvm,warp] = extractGait(dynamic,static,identity);
save ('SVM.txt','fsvm','-append','-ascii');
load('SVM.txt')
