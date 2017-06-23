function [fsvm,warp] = extractGait(dynamic,static,id)
static = mean(static);
str = dynamic(:,191); 



%moving average filter

a = 1;

b = [1/4 1/4 1/4 1/4];


y = filter(b,a,dynamic);


     
stride = y(:,191);  
avg = (max(stride)+min(stride))/1.75; 
t = 1:length(str);
%figure(1);
%plot(t,str,'m',t,stride,'b');
%legend('original','mask is 1/4');
k=1;
flag =0;
pos = -1*ones(1,3);
val =ones(1,3);
weight = 0.8*max(stride)+min(stride);
for i=2:length(stride)-1
if stride(i) >= avg
 flag=1;
end
%if (stride(i)>((max(stride)+min(stride))/2.3))
 if (stride(i)>weight/2)   
    continue;
end
if k>3
    break;
end
  
if ( stride(i-1)>stride(i) && stride(i+1)>stride(i)&& flag ==1 )
val(k)=stride(i);
pos(k)=i;

k=k+1;
end

end

figure(2);
plot(t,stride,t(pos),stride(pos));


warp=y(pos(1):pos(3),1:191);
svm=y(pos(1):pos(3),191:194);
svm = mean(svm);

sigma = y(pos(1):pos(3),195:198);


fVariance=var(sigma,1);




fsvm=[static,svm,fVariance,id];

%figure(3);
%plot(warp(:,191));

                                    








