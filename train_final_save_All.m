close all
clear all
clc
load('Corn_maize_healthy.mat')
load('Corn_maize_Cercospora_leaf_spot.mat')
load('Corn_maize_Common_rust.mat')
load('Pepper_bell_Bacterial_spot.mat')
load('Pepper_bell_healthy.mat')
load('Potato_Early_blight.mat')
load('Potato_healthy.mat')
load('Potato_Late_blight.mat')
load('Tomato_Leaf_Mold.mat')
load('Tomato_Yellow_Leaf_Curl_Virus.mat')
load('Tomato_Bacterial_spot.mat')
load('Tomato_healthy.mat')

Train_Feat = [Corn_maize_healthy; Corn_maize_Cercospora_leaf_spot ; Corn_maize_Common_rust ; Pepper_bell_Bacterial_spot ; Pepper_bell_healthy; Potato_Early_blight; Potato_healthy; Potato_Late_blight; Tomato_Leaf_Mold; Tomato_Yellow_Leaf_Curl_Virus; Tomato_Bacterial_spot; Tomato_healthy ];
Train_Label = [zeros(1,50), ones(1,50), 2*ones(1,50), 3*ones(1,50), 4*ones(1,50), 5*ones(1,50), 6*ones(1,50), 7*ones(1,50), 8*ones(1,50), 9*ones(1,50), 10*ones(1,50), 11*ones(1,50)];

save Training_Data
