clear;

%***
dynamic = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Test\dynamicTanmai.txt');
static = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Test\staticTanmai.txt');
%***
identity=0;
[fsvm,warp] = extractGait(dynamic,static,identity);
t=fsvm(:,2:5);
fsvm = [t,fsvm(:,7:17)];

save ('SVMtest.txt','fsvm','-append','-ascii');
load('SVMtest.txt')