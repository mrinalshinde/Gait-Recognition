clear;

%***
dynamic = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Test\dynamicShirish.txt');
static = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Test\staticShirish.txt');
%***

identity=0;
[fsvm,warp] = extractGait(dynamic,static,identity);
t=fsvm(:,2:5);
fsvm = [t,fsvm(:,7:18)];

Lsvm = fsvm(:,1:15);

%****
%save ('SVMtest.txt','fsvm','-append','-ascii');
%save ('SVMtest.txt','fsvm','-ascii');
%*****

%TestL = load('SVMtest.txt');
TestL=Lsvm;


%******
[Final_Id]=Identification(TestL)
%******