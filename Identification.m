function [Final_Id] =Identification(TestL)


Test = array2table(TestL);
Test.Properties.VariableNames = {'Kheight','FullArm','UpperArm','LowerArm','FullLeg' ,'Thigh','LowerLeg','ankleDist','elbowDist','kneeDist','handDist','varHeadX','varHeadY','varKneeLY','varKneeRY'};
Names = {'Anna';'Arpita'; 'Azfar' ;'John'; 'Mrinal'; 'Neviya'; 'Nishant' ;'Rudra';'Dravya' };
Id = zeros(size(TestL,1),1);
Identity = num2cell(Id);

%%yfit = predict(ClassifierName, Test{:,:});
load('ClassifierAnna.mat');
load('ClassifierArpita.mat');
load('ClassifierAzfar.mat');
%load('ClassifierDravya.mat');
load('ClassifierJohn.mat');
load('ClassifierMrinal.mat');
load('ClassifierNeviya.mat');
load('ClassifierNishant.mat');
load('ClassifierRudra.mat');
C = {ClassifierAnna;ClassifierArpita;ClassifierAzfar;ClassifierJohn;ClassifierMrinal;ClassifierNeviya;ClassifierNishant;ClassifierRudra};

for i =1:length(C);
    yfit = predict(C{i}, Test{:,:});
    temp =find((yfit)==1);
    Id(temp)=i;
    

end

for i =1:length(Id)
     if (Id(i)==0)
        Identity{i} = 'Intruder';
     
     else
         Identity{i}=Names(Id(i));
     end
end

Final_Id=cell2table(Identity);







        
        
    
    
    





    



