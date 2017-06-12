clear;
svm = load('SVM.txt');
temp = svm(:,21);
temp=meanNormalization(temp);
svm(:,21)=temp;
indices=randperm(size(svm,1));
Tsvm=svm(indices,:);
Tsvm = array2table(Tsvm);
Tsvm.Properties.VariableNames = {'Height','Kheight','FullArm','UpperArm','LowerArm','Torso','FullLeg' ,'Thigh','LowerLeg','ankleDist','elbowDist','kneeDist','handDist','HeadX','HeadY','kneeLY','kneeRY','varHeadX','varHeadY','varKneeLY','varKneeRY','ID'};

Test=load('SVMtest.txt');
Test=meanNormalization(Test);
Test = array2table(Test);
Test.Properties.VariableNames = {'Height','Kheight','FullArm','UpperArm','LowerArm','Torso','FullLeg' ,'Thigh','LowerLeg','ankleDist','elbowDist','kneeDist','handDist','HeadX','HeadY','kneeLY','kneeRY','varHeadX','varHeadY','varKneeLY','varKneeRY'};


