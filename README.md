# Multivariate_Leaf_Disease_Detection

This is an Image processing project done as part of undergraduate final year thesis.
I choose to perform image processing to use one algorithm to detect leaf disease in 
wide variety of plants. Existing technology focused mainly on detecting leaf disease on 
single variety of plant.

Image processing is used to ->
* Detect whether a leaf is infected by some desease
* Determine the type of disease

In this project I have tried to present a model that ->
* Employs GCLM technique to extract features
* Multi-SVM classifier to identify Multiple Crop disease

So that Farmers can ->
* Detect leaf disease soon
* Minimize production and economic loses
* Ensure  quality and quantity of agricultural projects
* Minimize agrochemical use

Methodology
---------------

### Pre-processing: ###
- Leaf Image extraction
- Background Removal
- Image Resize
- RGB to LAB color space
- Contrast Enhanced
    
### Segmentation: ### 
- Using K-means clustering Algorithm
    
### Feature Extraction: ### 
- GLCM(Gray level Co-occurrence matrix)
    
### Classifier: ### 
- Multi-SVM classifier
    
  
Experiment Result:
---------------  
  
  ### Training ###
  
  - Train 480 Imaage data
  - 3 Crops Variation
  - 80 Image of each 6 classes
  
 ### Testing ###
 
 - Test 60 data
 - 3 Crops Variation
 - Total of 6 classes
 
→ Correctly Identified 45 Data

→ Incorrectly Identified 15 Data

→ Accuracy 75%


<object data="https://github.com/taslima63/Multivariate_Leaf_Disease_Detection/blob/master/Thesis-report-slide.pdf" type="application/pdf" width="700px" height="700px">
    <embed src="https://github.com/taslima63/Multivariate_Leaf_Disease_Detection/blob/master/Thesis-report-slide.pdf">
        <p>This browser does not support PDFs. Please download the PDF to view it: <a href="https://github.com/taslima63/Multivariate_Leaf_Disease_Detection/blob/master/Thesis-report-slide.pdf">Project Slideshow</a>.</p>
    </embed>
</object>
