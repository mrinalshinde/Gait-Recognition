clear;

%***
dynamic = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Train\dynamicAnna5.txt');
static = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Train\staticAnna5.txt');
%***

identity=0;
[fsvm,warp] = extractGait(dynamic,static,identity);
fsvm = fsvm(:,1:17);

%****
%save ('SVMtest.txt','fsvm','-append','-ascii');
save ('SVMtest.txt','fsvm','-ascii');
%*****

TestL = load('SVMtest.txt');


%******
[Final_Id]=Identification(TestL)
%******