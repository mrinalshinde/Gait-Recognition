clear;
%***
dynamic = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Train\dynamicNish1.txt');
static = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Train\staticNish1.txt');
%***

%***
identity=7;
%***
[fsvm,warp] = extractGait(dynamic,static,identity);
stride = warp(:,191);
%plot (stride)
warp = round(warp(:,1:190));

count = ones(1,190);

for i=1:190
    temp = warp(:,i);
    count(i)=length(unique(temp));
    
end
location = find(count>=15);
num = length(location);
hist(warp(:,8),50);
type=[count,identity];
save ('countAvg.txt','type','-append','-ascii');
load('countAvg.txt');




