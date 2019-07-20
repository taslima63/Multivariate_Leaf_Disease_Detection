%Potato___Late_blight

for i=31:50
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Potato___Late_blight\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    img = imadjust(img,stretchlim(img));
    imshow(img);title('Potato Late blight');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Potato_Late_blight(i,:) = feat_disease;
    save Potato_Late_blight;
    close all
end

