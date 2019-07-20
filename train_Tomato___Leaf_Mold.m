%Tomato___Leaf_Mold

for i=46:50
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Tomato___Leaf_Mold\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    img = imadjust(img,stretchlim(img));
    imshow(img);title('Tomato Leaf Mold');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Tomato_Leaf_Mold(i,:) = feat_disease;
    save Tomato_Leaf_Mold;
    close all
end
