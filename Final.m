clear;

%***
dynamic = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Reading\dynamicNv4.txt');
static = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Reading\staticNv4.txt');
%***

identity=0;
[fsvm,warp] = extractGait(dynamic,static,identity);
fsvm = fsvm(:,1:21);

%****
%save ('SVMtest.txt','fsvm','-append','-ascii');
save ('SVMtest.txt','fsvm','-ascii');
%*****

TestL = load('SVMtest.txt');


%******
[Final_Id]=Identification(TestL)
%******