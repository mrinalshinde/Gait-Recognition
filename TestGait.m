clear;

%***
dynamic = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Train\dynamicArpita4.txt');
static = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Train\staticArpita4.txt');
%***
identity=0;
[fsvm,warp] = extractGait(dynamic,static,identity);
fsvm = fsvm(:,1:21);
save ('SVMtest.txt','fsvm','-append','-ascii');
load('SVMtest.txt')