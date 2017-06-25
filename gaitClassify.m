clear;
svm = load('SVM.txt');
t=svm(:,2:5);
svm = [t,svm(:,7:18)];
id = svm(:,16);
indices=randperm(size(svm,1));
Rsvm=svm(indices,:);
k=size(Rsvm,2)+1;
for i=1:length(unique(id))
temp = find (Rsvm(:,16)==i);
Rsvm(temp,k)=1;
k=k+1;
end

Train = array2table(Rsvm);
Train.Properties.VariableNames = {'Kheight','FullArm','UpperArm','LowerArm','FullLeg' ,'Thigh','LowerLeg','ankleDist','elbowDist','kneeDist','handDist','varHeadX','varHeadY','varKneeLY','varKneeRY','ID','Anna_Class','Azfar_Class','John_Class','Mrinal_Class','Neviya_Class','Nishant_Class','Rudra_Class','Tanmai_Class'};

TestL=load('SVMtest.txt');
Test = array2table(TestL);
Test.Properties.VariableNames = {'Kheight','FullArm','UpperArm','LowerArm','FullLeg' ,'Thigh','LowerLeg','ankleDist','elbowDist','kneeDist','handDist','varHeadX','varHeadY','varKneeLY','varKneeRY'};
%yfit = predict(ClassifierName, Test{:,:});


