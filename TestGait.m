clear;

%***
dynamic = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Test\dynamicDro6.txt');
static = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Test\staticDro6.txt');
%***
identity=0;
[fsvm,warp] = extractGait(dynamic,static,identity);
fsvm = fsvm(:,1:21);
save ('SVMtest.txt','fsvm','-append','-ascii');
load('SVMtest.txt')