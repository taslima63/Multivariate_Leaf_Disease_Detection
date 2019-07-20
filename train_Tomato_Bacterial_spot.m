%Tomato___Bacterial_spot

for i=1:50
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Tomato___Bacterial_spot\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    img = imadjust(img,stretchlim(img));
    imshow(img);title('Tomato Bacterial spot');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Tomato_Bacterial_spot(i,:) = feat_disease;
    save Tomato_Bacterial_spot;
    close all
end
