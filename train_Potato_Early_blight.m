%Potato___Early_blight

for i=9:50
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Potato___Early_blight\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    img = imadjust(img,stretchlim(img));
    imshow(img);title('Potato Early blight');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Potato_Early_blight(i,:) = feat_disease;
    save Potato_Early_blight;
    close all
end

