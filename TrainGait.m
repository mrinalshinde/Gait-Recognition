clear

%***
dynamic = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Train\dynamicAnna3.txt');
static = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Train\staticAnna3.txt');
%***

%***
identity=1;
%***

fsvm = extractGait(dynamic,static,identity);
save ('SVM.txt','fsvm','-append','-ascii');
load('SVM.txt')
