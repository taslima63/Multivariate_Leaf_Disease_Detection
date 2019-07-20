%Pepper,_bell___Bacterial_spot

for i=25:50
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Pepper,_bell___Bacterial_spot\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    img = imadjust(img,stretchlim(img));
    imshow(img);title('Pepper bell Bacterial spot');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Pepper_bell_Bacterial_spot(i,:) = feat_disease;
    save Pepper_bell_Bacterial_spot;
    close all
end

