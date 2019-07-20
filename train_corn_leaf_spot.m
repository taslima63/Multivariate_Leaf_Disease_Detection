% Training Part
%Features of corn_leaf_spot
for i=1:50
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Corn_(maize)___Cercospora_leaf_spot Gray_leaf_spot\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    img = imadjust(img,stretchlim(img));
    imshow(img);title('Corn Cerecospora leaf spot');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Corn_maize_Cercospora_leaf_spot(i,:) = feat_disease;
    save Corn_maize_Cercospora_leaf_spot;
    close all
end

