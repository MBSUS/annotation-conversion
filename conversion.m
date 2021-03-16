studyList = dir("Studies/");
for i = 3:length(studyList)
    orientationList = dir("Studies/"+studyList(i).name);
    for j = 3:length(orientationList)
        folderList = dir("Studies/"+studyList(i).name+"/"+orientationList(j).name);
        for k = 3:length(folderList)
            if folderList(k).name == "anno"
                load("Studies/"+studyList(i).name+"/"+orientationList(j).name+"/"+folderList(k).name+"/gTruth.mat")
                writetimetable(gTruth.LabelData, "Studies/"+studyList(i).name+"/"+orientationList(j).name+"/"+folderList(k).name+"/gTruth.csv")
            end
        end
    end
end