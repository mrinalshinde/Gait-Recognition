function y1 = meanNormalization(x)

y2=ones(size(x));
for i=1:size(x,2)
    temp=x(:,i);
    temp = temp-mean(x(:,i));
    temp = temp/(max(x(:,i))-min(x(:,i)));
    y2(:,i)=temp;
end
y1=y2;

