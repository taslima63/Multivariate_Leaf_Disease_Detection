%Tomato___Tomato_Yellow_Leaf_Curl_Virus

for i=1:50
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Tomato___Tomato_Yellow_Leaf_Curl_Virus\',num2str(i),'.JPG']);
    img = imresize(img,[256,256]);
    img = imadjust(img,stretchlim(img));
    imshow(img);title('Tomato Yellow Leaf Curl Virus');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Tomato_Yellow_Leaf_Curl_Virus(i,:) = feat_disease;
    save Tomato_Yellow_Leaf_Curl_Virus;
    close all
end
