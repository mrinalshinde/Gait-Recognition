clear;
svm = load('SVM.txt');
svm=[svm(:,1:13),svm(:,18:22)];
id = svm(:,18);
indices=randperm(size(svm,1));
Rsvm=svm(indices,:);
k=19;
for i=1:length(unique(id))
temp = find (Rsvm(:,18)==i);
Rsvm(temp,k)=1;
k=k+1;
end

Train = array2table(Rsvm);
Train.Properties.VariableNames = {'Height','Kheight','FullArm','UpperArm','LowerArm','Torso','FullLeg' ,'Thigh','LowerLeg','ankleDist','elbowDist','kneeDist','handDist','varHeadX','varHeadY','varKneeLY','varKneeRY','ID','Anna_Class','Arpita_Class','Azfar_Class','John_Class','Mrinal_Class','Neviya_Class','Nishant_Class','Rudra_Class','Dravya_Class'};

TestL=load('SVMtest.txt');
TestL=[TestL(:,1:13),TestL(:,18:21)];
Test = array2table(TestL);
Test.Properties.VariableNames = {'Height','Kheight','FullArm','UpperArm','LowerArm','Torso','FullLeg' ,'Thigh','LowerLeg','ankleDist','elbowDist','kneeDist','handDist','varHeadX','varHeadY','varKneeLY','varKneeRY'};
%%yfit = predict(ClassifierName, Test{:,:});


