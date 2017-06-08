clear
svm = load('SVM.txt');
indices=randperm(size(svm,1));
Tsvm=svm(indices,:);
Tsvm = array2table(Tsvm);
Tsvm.Properties.VariableNames = {'Height','Kheight','FullArm','UpperArm','LowerArm','Torso','FullLeg' ,'Thigh','LowerLeg','ankleDist','elbowDist','kneeDist','handDist','HeadX','HeadY','kneeLY','kneeRY','varHeadX','varHeadY','varKneeLY','varKneeRY','ID'};

Fsvm=load('SVMtest.txt');
Fsvm = array2table(Fsvm);
Fsvm.Properties.VariableNames = {'Height','Kheight','FullArm','UpperArm','LowerArm','Torso','FullLeg' ,'Thigh','LowerLeg','ankleDist','elbowDist','kneeDist','handDist','HeadX','HeadY','kneeLY','kneeRY','varHeadX','varHeadY','varKneeLY','varKneeRY'};


