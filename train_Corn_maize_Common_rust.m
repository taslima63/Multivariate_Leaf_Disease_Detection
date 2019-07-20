% Training Part
%Corn_(maize)___Common_rust_
for i=1:50
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Corn_(maize)___Common_rust_\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    img = imadjust(img,stretchlim(img));
    imshow(img);title('Corn (maize) Common_rust');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Corn_maize_Common_rust(i,:) = feat_disease;
    save Corn_maize_Common_rust;
    close all
end

