clear;
%***
dynamic = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Train\dynamicNev4.txt');
static = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Train\staticArpita1.txt');
%***

%***
identity=6;
%***
[fsvm,warp] = extractGait(dynamic,static,identity);
