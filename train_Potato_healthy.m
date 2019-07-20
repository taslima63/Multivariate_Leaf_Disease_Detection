%Potato___healthy

for i=45:50
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Potato___healthy\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    img = imadjust(img,stretchlim(img));
    imshow(img);title('Potato Healthy');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Potato_healthy(i,:) = feat_disease;
    save Potato_healthy;
    close all
end

