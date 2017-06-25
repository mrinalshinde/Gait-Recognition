clear;
TestL=load('SVMtest.txt');


Test = array2table(TestL);
Test.Properties.VariableNames = {'Kheight','FullArm','UpperArm','LowerArm','FullLeg' ,'Thigh','LowerLeg','ankleDist','elbowDist','kneeDist','handDist','varHeadX','varHeadY','varKneeLY','varKneeRY'};
Names = {'Anna';'Azfar' ;'John'; 'Mrinal'; 'Neviya'; 'Nishant' ;'Rudra';'Tanmai' };
Test.Kheight(4) = 0;
cd FineKNN; 

load('ClassifierAnna.mat');

load('ClassifierAzfar.mat');

load('ClassifierJohn.mat');
load('ClassifierMrinal.mat');
load('ClassifierNeviya.mat');
load('ClassifierNishant.mat');
load('ClassifierRudra.mat');
load('ClassifierTanmai.mat');
C = {ClassifierAnna;ClassifierAzfar;ClassifierJohn;ClassifierMrinal;ClassifierNeviya;ClassifierNishant;ClassifierRudra;ClassifierTanmai};

id_mat = zeros(size(TestL,1),length(C));

for i =1:length(C);
    yfit = predict(C{i}, Test{:,:});
    temp =find((yfit)==1);
    id_mat(temp,i)=1; 
end
Name_id=zeros(size(TestL,1),1);
Name_id=num2cell(Name_id);

for j=1:size(id_mat,1)
    pos = find((id_mat(j,:))==1);
    if  (isempty(pos))
         Name_id{j}='INTRUDER';
   
    else    
         for k=1:length(pos)
             if(k==1)
                 Name_id{j}=Names{pos(k)};
             else
                 Name_id{j}=[Name_id{j},'\',Names{pos(k)}];
                
             end
         end 
    
    end
end

cd ..;       
%%yfit = predict(ClassifierName, Test{:,:});
Final_Id=cell2table(Name_id)







        
        
    
    
    

