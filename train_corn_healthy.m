for i=1:50
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Corn_(maize)___healthy\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    img = imadjust(img,stretchlim(img));
    imshow(img);title('Corn_(maize) healthy');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Corn_maize_healthy(i,:) = feat_disease;
    save Corn_maize_healthy;
    close all
end

