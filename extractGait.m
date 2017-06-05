clear all
csvread ('c:\Dynamic Features\signalProcessing\StaticFeatures\Gait Data\Azfar\dynamicAzf1.txt');
dynamic = ans;

area = size(dynamic);

%moving average filter

a = 1;

b = [1/4 1/4 1/4 1/4];


y = filter(b,a,dynamic);


     
stride = y(:,191);  
avg = (max(stride)+min(stride))/2; 
%plot(stride);
t = 1:length(dynamic(:,191));
%plot(t,stride,'',t,y,'-');
%legend('original','mask is 1/4');
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
%plot(t,stride,t(pos),stride(pos))

warp=y(pos(1):pos(3),1:191);
svm=y(pos(1):pos(3),192:198);
plot(warp(:,191));






