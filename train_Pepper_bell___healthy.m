%Pepper,_bell___healthy

for i=1:50
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Pepper,_bell___healthy\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    img = imadjust(img,stretchlim(img));
    imshow(img);title('Pepper bell healthy');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Pepper_bell_healthy(i,:) = feat_disease;
    save Pepper_bell_healthy;
    close all
end

