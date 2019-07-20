%Tomato___healthy

for i=1:50
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Tomato___healthy\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    img = imadjust(img,stretchlim(img));
    imshow(img);title('Tomato healthy');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Tomato_healthy(i,:) = feat_disease;
    save Tomato_healthy;
    close all
end
