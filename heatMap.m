clear;
count = load('countAvg.txt');
id = count(:,191);
count = count(:,1:190);
total = mean(count);
total = round(total);
location = find(total>=15);
num = length(location);
mat= -1*ones(20,20);
k=1;
for i=1:20
    for j=1:20
        
        if(i==j)
            mat(i,j)=0;
        else
            if (mat(i,j)==-1)
            mat(i,j)=total(k);
            mat(j,i)=mat(i,j);
            k=k+1;
            else
                continue;
            end
            
            
        end
    end
end
ax=axes;
imagesc(mat,'Parent',ax), colorbar, colormap hot;
set(ax,'YDir','normal');
            




