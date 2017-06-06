clear all
%***
dynamic = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Azfar\dynamicAzf2.txt');
static = csvread ('C:\Users\Az3o5\Documents\Kinect Project\Gait-Recognition\Gait Data\Azfar\staticAzf2.txt');
%***
static = mean(static);
str = dynamic(:,191); 

area = size(dynamic);

%moving average filter

a = 1;

b = [1/4 1/4 1/4 1/4];


y = filter(b,a,dynamic);


     
stride = y(:,191);  
avg = (max(stride)+min(stride))/2; 
%plot(stride);
t = 1:length(str);
%figure(1);
%plot(t,str,'m',t,stride,'b');
legend('original','mask is 1/4');
k=1;
count =0;
for i=2:length(stride)-1
if stride(i) >= avg
    count=count+1;
end
if ( stride(i-1)>stride(i) && stride(i+1)>stride(i)&& count >0 )
val(k)=stride(i);
pos(k)=i;

k=k+1;
end
end

val=val(1:3);
pos=pos(1:3);
%figure(2);
%plot(t,stride,t(pos),stride(pos));


warp=y(pos(1):pos(3),1:191);
svm=y(pos(1):pos(3),191:198);
svm = mean(svm);

sigma = y(pos(1):pos(3),195:198);


fVariance=var(sigma);



%***
identity=1;
%***
fsvm=[static,svm,fVariance,identity];
%save ('SVM.txt','fsvm','-append','-ascii');
%load('SVM.txt')
%figure(3);
%plot(warp(:,191));

                                    








